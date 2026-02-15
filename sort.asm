
_sort:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
        }
    }
    printf(1, "\n");
}

int main(int argc, char *argv[]) {
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	8d bd 58 fe ff ff    	lea    -0x1a8(%ebp),%edi
  15:	53                   	push   %ebx
  16:	31 db                	xor    %ebx,%ebx
  18:	51                   	push   %ecx
  19:	81 ec a8 01 00 00    	sub    $0x1a8,%esp
  1f:	8b 01                	mov    (%ecx),%eax
  21:	8b 51 04             	mov    0x4(%ecx),%edx
  24:	89 85 50 fe ff ff    	mov    %eax,-0x1b0(%ebp)
  2a:	89 95 54 fe ff ff    	mov    %edx,-0x1ac(%ebp)
    int numbers[MAX_NUMBERS];
    int count = 0;
    
    if (argc < 2) {
  30:	83 f8 01             	cmp    $0x1,%eax
  33:	7e 79                	jle    ae <main+0xae>
  35:	8d 76 00             	lea    0x0(%esi),%esi
        exit();
    }
    
    // Parse command line arguments using atof (like your friend's code)
    for (int i = 1; i < argc && count < MAX_NUMBERS; i++) {
        numbers[count] = atof(argv[i]);
  38:	8b 85 54 fe ff ff    	mov    -0x1ac(%ebp),%eax
  3e:	83 ec 0c             	sub    $0xc,%esp
  41:	89 de                	mov    %ebx,%esi
    for (int i = 1; i < argc && count < MAX_NUMBERS; i++) {
  43:	83 c6 02             	add    $0x2,%esi
        numbers[count] = atof(argv[i]);
  46:	ff 74 98 04          	push   0x4(%eax,%ebx,4)
  4a:	e8 81 05 00 00       	call   5d0 <atof>
  4f:	89 d9                	mov    %ebx,%ecx
    for (int i = 1; i < argc && count < MAX_NUMBERS; i++) {
  51:	83 c4 10             	add    $0x10,%esp
        numbers[count] = atof(argv[i]);
  54:	89 04 9f             	mov    %eax,(%edi,%ebx,4)
        count++;
  57:	83 c3 01             	add    $0x1,%ebx
    for (int i = 1; i < argc && count < MAX_NUMBERS; i++) {
  5a:	39 b5 50 fe ff ff    	cmp    %esi,-0x1b0(%ebp)
  60:	7e 05                	jle    67 <main+0x67>
  62:	83 fb 63             	cmp    $0x63,%ebx
  65:	7e d1                	jle    38 <main+0x38>
    if (count == 0) {
        printf(2, "No valid numbers provided\n");
        exit();
    }
    
    printf(1, "Original array: ");
  67:	83 ec 08             	sub    $0x8,%esp
  6a:	89 8d 54 fe ff ff    	mov    %ecx,-0x1ac(%ebp)
  70:	68 42 0b 00 00       	push   $0xb42
  75:	6a 01                	push   $0x1
  77:	e8 b4 07 00 00       	call   830 <printf>
    printArray(numbers, count);
  7c:	5e                   	pop    %esi
  7d:	58                   	pop    %eax
  7e:	53                   	push   %ebx
  7f:	57                   	push   %edi
  80:	e8 ab 02 00 00       	call   330 <printArray>
    if (l >= r) return;
  85:	8b 8d 54 fe ff ff    	mov    -0x1ac(%ebp),%ecx
  8b:	83 c4 10             	add    $0x10,%esp
  8e:	85 c9                	test   %ecx,%ecx
  90:	75 3e                	jne    d0 <main+0xd0>
    
    mergeSort(numbers, 0, count - 1);
    
    printf(1, "Sorted array: ");
  92:	50                   	push   %eax
  93:	50                   	push   %eax
  94:	68 53 0b 00 00       	push   $0xb53
  99:	6a 01                	push   $0x1
  9b:	e8 90 07 00 00       	call   830 <printf>
    printArray(numbers, count);
  a0:	5a                   	pop    %edx
  a1:	59                   	pop    %ecx
  a2:	53                   	push   %ebx
  a3:	57                   	push   %edi
  a4:	e8 87 02 00 00       	call   330 <printArray>
    
    exit();
  a9:	e8 35 06 00 00       	call   6e3 <exit>
        printf(2, "Usage: %s <number1> <number2> ... \n", argv[0]);
  ae:	50                   	push   %eax
  af:	ff 32                	push   (%edx)
  b1:	68 6c 0b 00 00       	push   $0xb6c
  b6:	6a 02                	push   $0x2
  b8:	e8 73 07 00 00       	call   830 <printf>
        printf(2, "Example: sort 5.2 2.5 8.1 1.9 3.7\n");
  bd:	58                   	pop    %eax
  be:	5a                   	pop    %edx
  bf:	68 90 0b 00 00       	push   $0xb90
  c4:	6a 02                	push   $0x2
  c6:	e8 65 07 00 00       	call   830 <printf>
        exit();
  cb:	e8 13 06 00 00       	call   6e3 <exit>
  d0:	31 d2                	xor    %edx,%edx
  d2:	89 f8                	mov    %edi,%eax
  d4:	e8 87 01 00 00       	call   260 <mergeSort.part.0>
  d9:	eb b7                	jmp    92 <main+0x92>
  db:	66 90                	xchg   %ax,%ax
  dd:	66 90                	xchg   %ax,%ax
  df:	90                   	nop

000000e0 <merge>:
void merge(int A[], int l, int m, int r) {
  e0:	55                   	push   %ebp
  e1:	89 e5                	mov    %esp,%ebp
  e3:	57                   	push   %edi
  e4:	56                   	push   %esi
  e5:	53                   	push   %ebx
  e6:	81 ec 9c 01 00 00    	sub    $0x19c,%esp
    int i = l, j = m + 1, k = 0;
  ec:	8b 45 10             	mov    0x10(%ebp),%eax
void merge(int A[], int l, int m, int r) {
  ef:	8b 4d 08             	mov    0x8(%ebp),%ecx
    int i = l, j = m + 1, k = 0;
  f2:	8d 70 01             	lea    0x1(%eax),%esi
    while (i <= m && j <= r) {
  f5:	39 45 0c             	cmp    %eax,0xc(%ebp)
  f8:	0f 8f 32 01 00 00    	jg     230 <merge+0x150>
  fe:	3b 75 14             	cmp    0x14(%ebp),%esi
 101:	0f 8f 29 01 00 00    	jg     230 <merge+0x150>
 107:	8d 85 64 fe ff ff    	lea    -0x19c(%ebp),%eax
    int i = l, j = m + 1, k = 0;
 10d:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 110:	31 d2                	xor    %edx,%edx
 112:	89 85 60 fe ff ff    	mov    %eax,-0x1a0(%ebp)
 118:	eb 23                	jmp    13d <merge+0x5d>
 11a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
            temp[k++] = A[i++];
 120:	89 f8                	mov    %edi,%eax
 122:	8b bd 60 fe ff ff    	mov    -0x1a0(%ebp),%edi
 128:	83 c3 01             	add    $0x1,%ebx
 12b:	89 44 97 fc          	mov    %eax,-0x4(%edi,%edx,4)
    while (i <= m && j <= r) {
 12f:	3b 5d 10             	cmp    0x10(%ebp),%ebx
 132:	7f 2c                	jg     160 <merge+0x80>
 134:	39 75 14             	cmp    %esi,0x14(%ebp)
 137:	0f 8c 93 00 00 00    	jl     1d0 <merge+0xf0>
        if (A[i] <= A[j]) {
 13d:	8b 3c 99             	mov    (%ecx,%ebx,4),%edi
 140:	8b 04 b1             	mov    (%ecx,%esi,4),%eax
            temp[k++] = A[i++];
 143:	83 c2 01             	add    $0x1,%edx
        if (A[i] <= A[j]) {
 146:	39 c7                	cmp    %eax,%edi
 148:	7e d6                	jle    120 <merge+0x40>
            temp[k++] = A[j++];
 14a:	8b bd 60 fe ff ff    	mov    -0x1a0(%ebp),%edi
 150:	83 c6 01             	add    $0x1,%esi
 153:	89 44 97 fc          	mov    %eax,-0x4(%edi,%edx,4)
    while (i <= m && j <= r) {
 157:	3b 5d 10             	cmp    0x10(%ebp),%ebx
 15a:	7e d8                	jle    134 <merge+0x54>
 15c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    while (j <= r) {
 160:	3b 75 14             	cmp    0x14(%ebp),%esi
 163:	7f 41                	jg     1a6 <merge+0xc6>
 165:	8b bd 60 fe ff ff    	mov    -0x1a0(%ebp),%edi
 16b:	89 d0                	mov    %edx,%eax
    int i = l, j = m + 1, k = 0;
 16d:	89 95 5c fe ff ff    	mov    %edx,-0x1a4(%ebp)
 173:	29 f0                	sub    %esi,%eax
 175:	8d 1c 87             	lea    (%edi,%eax,4),%ebx
 178:	8b 7d 14             	mov    0x14(%ebp),%edi
 17b:	89 f0                	mov    %esi,%eax
 17d:	8d 76 00             	lea    0x0(%esi),%esi
        temp[k++] = A[j++];
 180:	83 c0 01             	add    $0x1,%eax
 183:	8b 54 81 fc          	mov    -0x4(%ecx,%eax,4),%edx
 187:	89 54 83 fc          	mov    %edx,-0x4(%ebx,%eax,4)
    while (j <= r) {
 18b:	39 c7                	cmp    %eax,%edi
 18d:	7d f1                	jge    180 <merge+0xa0>
 18f:	8b 45 14             	mov    0x14(%ebp),%eax
 192:	31 db                	xor    %ebx,%ebx
 194:	8b 95 5c fe ff ff    	mov    -0x1a4(%ebp),%edx
 19a:	29 f0                	sub    %esi,%eax
 19c:	3b 75 14             	cmp    0x14(%ebp),%esi
 19f:	0f 4f c3             	cmovg  %ebx,%eax
 1a2:	8d 54 02 01          	lea    0x1(%edx,%eax,1),%edx
    for (int b = 0; b < k; b++) {
 1a6:	8b 45 0c             	mov    0xc(%ebp),%eax
 1a9:	8b b5 60 fe ff ff    	mov    -0x1a0(%ebp),%esi
 1af:	8d 1c 81             	lea    (%ecx,%eax,4),%ebx
 1b2:	31 c0                	xor    %eax,%eax
 1b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        A[l + b] = temp[b];
 1b8:	8b 0c 86             	mov    (%esi,%eax,4),%ecx
 1bb:	89 0c 83             	mov    %ecx,(%ebx,%eax,4)
    for (int b = 0; b < k; b++) {
 1be:	83 c0 01             	add    $0x1,%eax
 1c1:	39 d0                	cmp    %edx,%eax
 1c3:	75 f3                	jne    1b8 <merge+0xd8>
}
 1c5:	81 c4 9c 01 00 00    	add    $0x19c,%esp
 1cb:	5b                   	pop    %ebx
 1cc:	5e                   	pop    %esi
 1cd:	5f                   	pop    %edi
 1ce:	5d                   	pop    %ebp
 1cf:	c3                   	ret
    while (i <= m) {
 1d0:	3b 5d 10             	cmp    0x10(%ebp),%ebx
 1d3:	7f 8b                	jg     160 <merge+0x80>
 1d5:	89 d0                	mov    %edx,%eax
 1d7:	8b bd 60 fe ff ff    	mov    -0x1a0(%ebp),%edi
    int i = l, j = m + 1, k = 0;
 1dd:	89 9d 5c fe ff ff    	mov    %ebx,-0x1a4(%ebp)
 1e3:	29 d8                	sub    %ebx,%eax
 1e5:	89 95 58 fe ff ff    	mov    %edx,-0x1a8(%ebp)
 1eb:	8b 55 10             	mov    0x10(%ebp),%edx
 1ee:	8d 3c 87             	lea    (%edi,%eax,4),%edi
 1f1:	89 d8                	mov    %ebx,%eax
 1f3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        temp[k++] = A[i++];
 1f8:	83 c0 01             	add    $0x1,%eax
 1fb:	8b 5c 81 fc          	mov    -0x4(%ecx,%eax,4),%ebx
 1ff:	89 5c 87 fc          	mov    %ebx,-0x4(%edi,%eax,4)
    while (i <= m) {
 203:	39 c2                	cmp    %eax,%edx
 205:	7d f1                	jge    1f8 <merge+0x118>
 207:	8b 9d 5c fe ff ff    	mov    -0x1a4(%ebp),%ebx
 20d:	8b 45 10             	mov    0x10(%ebp),%eax
 210:	8b 95 58 fe ff ff    	mov    -0x1a8(%ebp),%edx
 216:	29 d8                	sub    %ebx,%eax
 218:	3b 5d 10             	cmp    0x10(%ebp),%ebx
 21b:	bb 00 00 00 00       	mov    $0x0,%ebx
 220:	0f 4f c3             	cmovg  %ebx,%eax
 223:	8d 54 02 01          	lea    0x1(%edx,%eax,1),%edx
 227:	e9 34 ff ff ff       	jmp    160 <merge+0x80>
 22c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 230:	8d 85 64 fe ff ff    	lea    -0x19c(%ebp),%eax
    int i = l, j = m + 1, k = 0;
 236:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 239:	31 d2                	xor    %edx,%edx
 23b:	89 85 60 fe ff ff    	mov    %eax,-0x1a0(%ebp)
    while (i <= m) {
 241:	8b 45 10             	mov    0x10(%ebp),%eax
 244:	39 c3                	cmp    %eax,%ebx
 246:	7e 8d                	jle    1d5 <merge+0xf5>
    while (j <= r) {
 248:	3b 75 14             	cmp    0x14(%ebp),%esi
 24b:	0f 8e 14 ff ff ff    	jle    165 <merge+0x85>
 251:	e9 6f ff ff ff       	jmp    1c5 <merge+0xe5>
 256:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 25d:	00 
 25e:	66 90                	xchg   %ax,%ax

00000260 <mergeSort.part.0>:
void mergeSort(int A[], int l, int r) {
 260:	55                   	push   %ebp
 261:	89 e5                	mov    %esp,%ebp
 263:	57                   	push   %edi
 264:	89 cf                	mov    %ecx,%edi
 266:	56                   	push   %esi
 267:	89 d6                	mov    %edx,%esi
 269:	53                   	push   %ebx
    int m = l + (r - l) / 2;
 26a:	89 cb                	mov    %ecx,%ebx
 26c:	29 d3                	sub    %edx,%ebx
 26e:	d1 fb                	sar    $1,%ebx
 270:	01 d3                	add    %edx,%ebx
void mergeSort(int A[], int l, int r) {
 272:	83 ec 1c             	sub    $0x1c,%esp
    if (l >= r) return;
 275:	39 da                	cmp    %ebx,%edx
 277:	7d 0d                	jge    286 <mergeSort.part.0+0x26>
 279:	89 d9                	mov    %ebx,%ecx
 27b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 27e:	e8 dd ff ff ff       	call   260 <mergeSort.part.0>
 283:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    mergeSort(A, m + 1, r);
 286:	8d 53 01             	lea    0x1(%ebx),%edx
    if (l >= r) return;
 289:	39 d7                	cmp    %edx,%edi
 28b:	7e 0d                	jle    29a <mergeSort.part.0+0x3a>
 28d:	89 f9                	mov    %edi,%ecx
 28f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 292:	e8 c9 ff ff ff       	call   260 <mergeSort.part.0>
 297:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    merge(A, l, m, r);
 29a:	57                   	push   %edi
 29b:	53                   	push   %ebx
 29c:	56                   	push   %esi
 29d:	50                   	push   %eax
 29e:	e8 3d fe ff ff       	call   e0 <merge>
 2a3:	83 c4 10             	add    $0x10,%esp
}
 2a6:	8d 65 f4             	lea    -0xc(%ebp),%esp
 2a9:	5b                   	pop    %ebx
 2aa:	5e                   	pop    %esi
 2ab:	5f                   	pop    %edi
 2ac:	5d                   	pop    %ebp
 2ad:	c3                   	ret
 2ae:	66 90                	xchg   %ax,%ax

000002b0 <mergeSort>:
void mergeSort(int A[], int l, int r) {
 2b0:	55                   	push   %ebp
 2b1:	89 e5                	mov    %esp,%ebp
 2b3:	8b 55 0c             	mov    0xc(%ebp),%edx
 2b6:	8b 4d 10             	mov    0x10(%ebp),%ecx
 2b9:	8b 45 08             	mov    0x8(%ebp),%eax
    if (l >= r) return;
 2bc:	39 ca                	cmp    %ecx,%edx
 2be:	7c 08                	jl     2c8 <mergeSort+0x18>
}
 2c0:	5d                   	pop    %ebp
 2c1:	c3                   	ret
 2c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 2c8:	5d                   	pop    %ebp
 2c9:	eb 95                	jmp    260 <mergeSort.part.0>
 2cb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

000002d0 <print_fixed>:
void print_fixed(int num) {
 2d0:	55                   	push   %ebp
 2d1:	89 e5                	mov    %esp,%ebp
 2d3:	56                   	push   %esi
 2d4:	53                   	push   %ebx
 2d5:	8b 45 08             	mov    0x8(%ebp),%eax
    int integer_part = num >> SHIFT_AMOUNT;
 2d8:	89 c6                	mov    %eax,%esi
    int fractional_part = ((num < 0 ? -num : num) & SHIFT_MASK) * 1000 >> SHIFT_AMOUNT;
 2da:	89 c3                	mov    %eax,%ebx
    int integer_part = num >> SHIFT_AMOUNT;
 2dc:	c1 fe 08             	sar    $0x8,%esi
    int fractional_part = ((num < 0 ? -num : num) & SHIFT_MASK) * 1000 >> SHIFT_AMOUNT;
 2df:	f7 db                	neg    %ebx
 2e1:	0f 48 d8             	cmovs  %eax,%ebx
 2e4:	0f b6 db             	movzbl %bl,%ebx
 2e7:	69 db e8 03 00 00    	imul   $0x3e8,%ebx,%ebx
 2ed:	c1 fb 08             	sar    $0x8,%ebx
    if (num < 0 && integer_part == 0) {
 2f0:	85 c0                	test   %eax,%eax
 2f2:	79 04                	jns    2f8 <print_fixed+0x28>
 2f4:	85 f6                	test   %esi,%esi
 2f6:	74 18                	je     310 <print_fixed+0x40>
    printf(1, "%d.%d", integer_part, fractional_part);
 2f8:	53                   	push   %ebx
 2f9:	56                   	push   %esi
 2fa:	68 3a 0b 00 00       	push   $0xb3a
 2ff:	6a 01                	push   $0x1
 301:	e8 2a 05 00 00       	call   830 <printf>
}
 306:	83 c4 10             	add    $0x10,%esp
 309:	8d 65 f8             	lea    -0x8(%ebp),%esp
 30c:	5b                   	pop    %ebx
 30d:	5e                   	pop    %esi
 30e:	5d                   	pop    %ebp
 30f:	c3                   	ret
        printf(1, "-");
 310:	83 ec 08             	sub    $0x8,%esp
 313:	68 38 0b 00 00       	push   $0xb38
 318:	6a 01                	push   $0x1
 31a:	e8 11 05 00 00       	call   830 <printf>
 31f:	83 c4 10             	add    $0x10,%esp
 322:	eb d4                	jmp    2f8 <print_fixed+0x28>
 324:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 32b:	00 
 32c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000330 <printArray>:
void printArray(int arr[], int n) {
 330:	55                   	push   %ebp
 331:	89 e5                	mov    %esp,%ebp
 333:	57                   	push   %edi
 334:	56                   	push   %esi
 335:	31 f6                	xor    %esi,%esi
 337:	53                   	push   %ebx
 338:	83 ec 1c             	sub    $0x1c,%esp
 33b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 33e:	8b 7d 08             	mov    0x8(%ebp),%edi
        if (i < n - 1) {
 341:	8d 43 ff             	lea    -0x1(%ebx),%eax
 344:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    for (int i = 0; i < n; i++) {
 347:	85 db                	test   %ebx,%ebx
 349:	7e 31                	jle    37c <printArray+0x4c>
 34b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        print_fixed(arr[i]);
 350:	83 ec 0c             	sub    $0xc,%esp
 353:	ff 34 b7             	push   (%edi,%esi,4)
 356:	e8 75 ff ff ff       	call   2d0 <print_fixed>
        if (i < n - 1) {
 35b:	83 c4 10             	add    $0x10,%esp
 35e:	39 75 e4             	cmp    %esi,-0x1c(%ebp)
 361:	7e 12                	jle    375 <printArray+0x45>
            printf(1, " ");
 363:	83 ec 08             	sub    $0x8,%esp
 366:	68 60 0b 00 00       	push   $0xb60
 36b:	6a 01                	push   $0x1
 36d:	e8 be 04 00 00       	call   830 <printf>
 372:	83 c4 10             	add    $0x10,%esp
    for (int i = 0; i < n; i++) {
 375:	83 c6 01             	add    $0x1,%esi
 378:	39 f3                	cmp    %esi,%ebx
 37a:	75 d4                	jne    350 <printArray+0x20>
    printf(1, "\n");
 37c:	c7 45 0c 40 0b 00 00 	movl   $0xb40,0xc(%ebp)
 383:	c7 45 08 01 00 00 00 	movl   $0x1,0x8(%ebp)
}
 38a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 38d:	5b                   	pop    %ebx
 38e:	5e                   	pop    %esi
 38f:	5f                   	pop    %edi
 390:	5d                   	pop    %ebp
    printf(1, "\n");
 391:	e9 9a 04 00 00       	jmp    830 <printf>
 396:	66 90                	xchg   %ax,%ax
 398:	66 90                	xchg   %ax,%ax
 39a:	66 90                	xchg   %ax,%ax
 39c:	66 90                	xchg   %ax,%ax
 39e:	66 90                	xchg   %ax,%ax

000003a0 <strcpy>:
#include "user.h"
#include "x86.h"
#include "param.h"
char*
strcpy(char *s, const char *t)
{
 3a0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 3a1:	31 c0                	xor    %eax,%eax
{
 3a3:	89 e5                	mov    %esp,%ebp
 3a5:	53                   	push   %ebx
 3a6:	8b 4d 08             	mov    0x8(%ebp),%ecx
 3a9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 3ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 3b0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 3b4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 3b7:	83 c0 01             	add    $0x1,%eax
 3ba:	84 d2                	test   %dl,%dl
 3bc:	75 f2                	jne    3b0 <strcpy+0x10>
    ;
  return os;
}
 3be:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3c1:	89 c8                	mov    %ecx,%eax
 3c3:	c9                   	leave
 3c4:	c3                   	ret
 3c5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 3cc:	00 
 3cd:	8d 76 00             	lea    0x0(%esi),%esi

000003d0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 3d0:	55                   	push   %ebp
 3d1:	89 e5                	mov    %esp,%ebp
 3d3:	53                   	push   %ebx
 3d4:	8b 55 08             	mov    0x8(%ebp),%edx
 3d7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 3da:	0f b6 02             	movzbl (%edx),%eax
 3dd:	84 c0                	test   %al,%al
 3df:	75 17                	jne    3f8 <strcmp+0x28>
 3e1:	eb 3a                	jmp    41d <strcmp+0x4d>
 3e3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 3e8:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 3ec:	83 c2 01             	add    $0x1,%edx
 3ef:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 3f2:	84 c0                	test   %al,%al
 3f4:	74 1a                	je     410 <strcmp+0x40>
 3f6:	89 d9                	mov    %ebx,%ecx
 3f8:	0f b6 19             	movzbl (%ecx),%ebx
 3fb:	38 c3                	cmp    %al,%bl
 3fd:	74 e9                	je     3e8 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 3ff:	29 d8                	sub    %ebx,%eax
}
 401:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 404:	c9                   	leave
 405:	c3                   	ret
 406:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 40d:	00 
 40e:	66 90                	xchg   %ax,%ax
  return (uchar)*p - (uchar)*q;
 410:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 414:	31 c0                	xor    %eax,%eax
 416:	29 d8                	sub    %ebx,%eax
}
 418:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 41b:	c9                   	leave
 41c:	c3                   	ret
  return (uchar)*p - (uchar)*q;
 41d:	0f b6 19             	movzbl (%ecx),%ebx
 420:	31 c0                	xor    %eax,%eax
 422:	eb db                	jmp    3ff <strcmp+0x2f>
 424:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 42b:	00 
 42c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000430 <strlen>:

uint
strlen(const char *s)
{
 430:	55                   	push   %ebp
 431:	89 e5                	mov    %esp,%ebp
 433:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 436:	80 3a 00             	cmpb   $0x0,(%edx)
 439:	74 15                	je     450 <strlen+0x20>
 43b:	31 c0                	xor    %eax,%eax
 43d:	8d 76 00             	lea    0x0(%esi),%esi
 440:	83 c0 01             	add    $0x1,%eax
 443:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 447:	89 c1                	mov    %eax,%ecx
 449:	75 f5                	jne    440 <strlen+0x10>
    ;
  return n;
}
 44b:	89 c8                	mov    %ecx,%eax
 44d:	5d                   	pop    %ebp
 44e:	c3                   	ret
 44f:	90                   	nop
  for(n = 0; s[n]; n++)
 450:	31 c9                	xor    %ecx,%ecx
}
 452:	5d                   	pop    %ebp
 453:	89 c8                	mov    %ecx,%eax
 455:	c3                   	ret
 456:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 45d:	00 
 45e:	66 90                	xchg   %ax,%ax

00000460 <memset>:

void*
memset(void *dst, int c, uint n)
{
 460:	55                   	push   %ebp
 461:	89 e5                	mov    %esp,%ebp
 463:	57                   	push   %edi
 464:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 467:	8b 4d 10             	mov    0x10(%ebp),%ecx
 46a:	8b 45 0c             	mov    0xc(%ebp),%eax
 46d:	89 d7                	mov    %edx,%edi
 46f:	fc                   	cld
 470:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 472:	8b 7d fc             	mov    -0x4(%ebp),%edi
 475:	89 d0                	mov    %edx,%eax
 477:	c9                   	leave
 478:	c3                   	ret
 479:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000480 <strchr>:

char*
strchr(const char *s, char c)
{
 480:	55                   	push   %ebp
 481:	89 e5                	mov    %esp,%ebp
 483:	8b 45 08             	mov    0x8(%ebp),%eax
 486:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 48a:	0f b6 10             	movzbl (%eax),%edx
 48d:	84 d2                	test   %dl,%dl
 48f:	75 12                	jne    4a3 <strchr+0x23>
 491:	eb 1d                	jmp    4b0 <strchr+0x30>
 493:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 498:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 49c:	83 c0 01             	add    $0x1,%eax
 49f:	84 d2                	test   %dl,%dl
 4a1:	74 0d                	je     4b0 <strchr+0x30>
    if(*s == c)
 4a3:	38 d1                	cmp    %dl,%cl
 4a5:	75 f1                	jne    498 <strchr+0x18>
      return (char*)s;
  return 0;
}
 4a7:	5d                   	pop    %ebp
 4a8:	c3                   	ret
 4a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 4b0:	31 c0                	xor    %eax,%eax
}
 4b2:	5d                   	pop    %ebp
 4b3:	c3                   	ret
 4b4:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 4bb:	00 
 4bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000004c0 <gets>:

char*
gets(char *buf, int max)
{
 4c0:	55                   	push   %ebp
 4c1:	89 e5                	mov    %esp,%ebp
 4c3:	57                   	push   %edi
 4c4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 4c5:	8d 75 e7             	lea    -0x19(%ebp),%esi
{
 4c8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 4c9:	31 db                	xor    %ebx,%ebx
{
 4cb:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 4ce:	eb 27                	jmp    4f7 <gets+0x37>
    cc = read(0, &c, 1);
 4d0:	83 ec 04             	sub    $0x4,%esp
 4d3:	6a 01                	push   $0x1
 4d5:	56                   	push   %esi
 4d6:	6a 00                	push   $0x0
 4d8:	e8 1e 02 00 00       	call   6fb <read>
    if(cc < 1)
 4dd:	83 c4 10             	add    $0x10,%esp
 4e0:	85 c0                	test   %eax,%eax
 4e2:	7e 1d                	jle    501 <gets+0x41>
      break;
    buf[i++] = c;
 4e4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 4e8:	8b 55 08             	mov    0x8(%ebp),%edx
 4eb:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 4ef:	3c 0a                	cmp    $0xa,%al
 4f1:	74 10                	je     503 <gets+0x43>
 4f3:	3c 0d                	cmp    $0xd,%al
 4f5:	74 0c                	je     503 <gets+0x43>
  for(i=0; i+1 < max; ){
 4f7:	89 df                	mov    %ebx,%edi
 4f9:	83 c3 01             	add    $0x1,%ebx
 4fc:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 4ff:	7c cf                	jl     4d0 <gets+0x10>
 501:	89 fb                	mov    %edi,%ebx
      break;
  }
  buf[i] = '\0';
 503:	8b 45 08             	mov    0x8(%ebp),%eax
 506:	c6 04 18 00          	movb   $0x0,(%eax,%ebx,1)
  return buf;
}
 50a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 50d:	5b                   	pop    %ebx
 50e:	5e                   	pop    %esi
 50f:	5f                   	pop    %edi
 510:	5d                   	pop    %ebp
 511:	c3                   	ret
 512:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 519:	00 
 51a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000520 <stat>:

int
stat(const char *n, struct stat *st)
{
 520:	55                   	push   %ebp
 521:	89 e5                	mov    %esp,%ebp
 523:	56                   	push   %esi
 524:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 525:	83 ec 08             	sub    $0x8,%esp
 528:	6a 00                	push   $0x0
 52a:	ff 75 08             	push   0x8(%ebp)
 52d:	e8 f1 01 00 00       	call   723 <open>
  if(fd < 0)
 532:	83 c4 10             	add    $0x10,%esp
 535:	85 c0                	test   %eax,%eax
 537:	78 27                	js     560 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 539:	83 ec 08             	sub    $0x8,%esp
 53c:	ff 75 0c             	push   0xc(%ebp)
 53f:	89 c3                	mov    %eax,%ebx
 541:	50                   	push   %eax
 542:	e8 f4 01 00 00       	call   73b <fstat>
  close(fd);
 547:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 54a:	89 c6                	mov    %eax,%esi
  close(fd);
 54c:	e8 ba 01 00 00       	call   70b <close>
  return r;
 551:	83 c4 10             	add    $0x10,%esp
}
 554:	8d 65 f8             	lea    -0x8(%ebp),%esp
 557:	89 f0                	mov    %esi,%eax
 559:	5b                   	pop    %ebx
 55a:	5e                   	pop    %esi
 55b:	5d                   	pop    %ebp
 55c:	c3                   	ret
 55d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 560:	be ff ff ff ff       	mov    $0xffffffff,%esi
 565:	eb ed                	jmp    554 <stat+0x34>
 567:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 56e:	00 
 56f:	90                   	nop

00000570 <atoi>:

int
atoi(const char *s)
{
 570:	55                   	push   %ebp
 571:	89 e5                	mov    %esp,%ebp
 573:	56                   	push   %esi
 574:	be 01 00 00 00       	mov    $0x1,%esi
 579:	53                   	push   %ebx
 57a:	8b 5d 08             	mov    0x8(%ebp),%ebx
  int n, sign;
  n = 0;
  sign = 1;
  if(*s == '-'||*s=='+')
 57d:	0f be 13             	movsbl (%ebx),%edx
 580:	8d 42 d5             	lea    -0x2b(%edx),%eax
 583:	a8 fd                	test   $0xfd,%al
 585:	75 15                	jne    59c <atoi+0x2c>
  {
    sign = (*s == '-'?  -1  : 1);
 587:	31 c0                	xor    %eax,%eax
 589:	80 fa 2d             	cmp    $0x2d,%dl
    s++;
  }
  while('0' <= *s && *s <= '9')
 58c:	0f be 53 01          	movsbl 0x1(%ebx),%edx
    sign = (*s == '-'?  -1  : 1);
 590:	0f 95 c0             	setne  %al
    s++;
 593:	83 c3 01             	add    $0x1,%ebx
    sign = (*s == '-'?  -1  : 1);
 596:	89 c6                	mov    %eax,%esi
 598:	8d 74 36 ff          	lea    -0x1(%esi,%esi,1),%esi
  while('0' <= *s && *s <= '9')
 59c:	8d 4a d0             	lea    -0x30(%edx),%ecx
 59f:	31 c0                	xor    %eax,%eax
 5a1:	80 f9 09             	cmp    $0x9,%cl
 5a4:	77 22                	ja     5c8 <atoi+0x58>
 5a6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 5ad:	00 
 5ae:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 5b0:	83 c3 01             	add    $0x1,%ebx
 5b3:	8d 04 80             	lea    (%eax,%eax,4),%eax
 5b6:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
 5ba:	0f be 13             	movsbl (%ebx),%edx
 5bd:	8d 4a d0             	lea    -0x30(%edx),%ecx
 5c0:	80 f9 09             	cmp    $0x9,%cl
 5c3:	76 eb                	jbe    5b0 <atoi+0x40>
  return n*sign;
 5c5:	0f af c6             	imul   %esi,%eax
}
 5c8:	5b                   	pop    %ebx
 5c9:	5e                   	pop    %esi
 5ca:	5d                   	pop    %ebp
 5cb:	c3                   	ret
 5cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000005d0 <atof>:

int atof(const char *s)
{
 5d0:	55                   	push   %ebp
 5d1:	89 e5                	mov    %esp,%ebp
 5d3:	57                   	push   %edi
 5d4:	56                   	push   %esi
 5d5:	53                   	push   %ebx
 5d6:	bb 01 00 00 00       	mov    $0x1,%ebx
 5db:	83 ec 04             	sub    $0x4,%esp
 5de:	8b 55 08             	mov    0x8(%ebp),%edx
    int sign = 1;
    int integer = 0;
    int fraction = 0;
    int fraction_scale = 1;

    if (*s == '-' || *s == '+') {
 5e1:	0f b6 02             	movzbl (%edx),%eax
 5e4:	8d 48 d5             	lea    -0x2b(%eax),%ecx
 5e7:	81 e1 fd 00 00 00    	and    $0xfd,%ecx
 5ed:	75 12                	jne    601 <atof+0x31>
        sign = (*s == '-') ? -1 : 1;
 5ef:	31 db                	xor    %ebx,%ebx
 5f1:	3c 2d                	cmp    $0x2d,%al
        s++;
    }

    while ('0' <= *s && *s <= '9') {
 5f3:	0f b6 42 01          	movzbl 0x1(%edx),%eax
        sign = (*s == '-') ? -1 : 1;
 5f7:	0f 95 c3             	setne  %bl
        s++;
 5fa:	83 c2 01             	add    $0x1,%edx
        sign = (*s == '-') ? -1 : 1;
 5fd:	8d 5c 1b ff          	lea    -0x1(%ebx,%ebx,1),%ebx
    while ('0' <= *s && *s <= '9') {
 601:	8d 70 d0             	lea    -0x30(%eax),%esi
 604:	31 ff                	xor    %edi,%edi
 606:	89 f1                	mov    %esi,%ecx
 608:	80 f9 09             	cmp    $0x9,%cl
 60b:	77 2c                	ja     639 <atof+0x69>
 60d:	89 de                	mov    %ebx,%esi
 60f:	89 f9                	mov    %edi,%ecx
 611:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        integer = integer * 10 + (*s - '0');
 618:	83 e8 30             	sub    $0x30,%eax
 61b:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
        s++;
 61e:	83 c2 01             	add    $0x1,%edx
        integer = integer * 10 + (*s - '0');
 621:	0f be c0             	movsbl %al,%eax
 624:	8d 0c 48             	lea    (%eax,%ecx,2),%ecx
    while ('0' <= *s && *s <= '9') {
 627:	0f b6 02             	movzbl (%edx),%eax
 62a:	8d 58 d0             	lea    -0x30(%eax),%ebx
 62d:	80 fb 09             	cmp    $0x9,%bl
 630:	76 e6                	jbe    618 <atof+0x48>
            fraction_scale *= 10;
            s++;
        }
    }

    int result = integer << SHIFT_AMOUNT;
 632:	89 cf                	mov    %ecx,%edi
 634:	89 f3                	mov    %esi,%ebx
 636:	c1 e7 08             	shl    $0x8,%edi
    if (*s == '.') {
 639:	3c 2e                	cmp    $0x2e,%al
 63b:	74 13                	je     650 <atof+0x80>
    if (fraction_scale > 1) {
        result += (fraction << SHIFT_AMOUNT) / fraction_scale;
    }

    return sign * result;
}
 63d:	83 c4 04             	add    $0x4,%esp
    return sign * result;
 640:	89 f8                	mov    %edi,%eax
 642:	0f af c3             	imul   %ebx,%eax
}
 645:	5b                   	pop    %ebx
 646:	5e                   	pop    %esi
 647:	5f                   	pop    %edi
 648:	5d                   	pop    %ebp
 649:	c3                   	ret
 64a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        s++;
 650:	8d 72 01             	lea    0x1(%edx),%esi
        while ('0' <= *s && *s <= '9') {
 653:	0f b6 52 01          	movzbl 0x1(%edx),%edx
 657:	8d 42 d0             	lea    -0x30(%edx),%eax
 65a:	3c 09                	cmp    $0x9,%al
 65c:	77 df                	ja     63d <atof+0x6d>
    int fraction = 0;
 65e:	89 7d f0             	mov    %edi,-0x10(%ebp)
    int fraction_scale = 1;
 661:	b9 01 00 00 00       	mov    $0x1,%ecx
    int fraction = 0;
 666:	31 c0                	xor    %eax,%eax
 668:	89 df                	mov    %ebx,%edi
 66a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
            fraction = fraction * 10 + (*s - '0');
 670:	83 ea 30             	sub    $0x30,%edx
 673:	8d 04 80             	lea    (%eax,%eax,4),%eax
            fraction_scale *= 10;
 676:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
            s++;
 679:	83 c6 01             	add    $0x1,%esi
            fraction = fraction * 10 + (*s - '0');
 67c:	0f be d2             	movsbl %dl,%edx
            fraction_scale *= 10;
 67f:	01 c9                	add    %ecx,%ecx
            fraction = fraction * 10 + (*s - '0');
 681:	8d 04 42             	lea    (%edx,%eax,2),%eax
        while ('0' <= *s && *s <= '9') {
 684:	0f b6 16             	movzbl (%esi),%edx
 687:	8d 5a d0             	lea    -0x30(%edx),%ebx
 68a:	80 fb 09             	cmp    $0x9,%bl
 68d:	76 e1                	jbe    670 <atof+0xa0>
    if (fraction_scale > 1) {
 68f:	89 fb                	mov    %edi,%ebx
 691:	8b 7d f0             	mov    -0x10(%ebp),%edi
 694:	83 f9 01             	cmp    $0x1,%ecx
 697:	7e a4                	jle    63d <atof+0x6d>
        result += (fraction << SHIFT_AMOUNT) / fraction_scale;
 699:	c1 e0 08             	shl    $0x8,%eax
}
 69c:	83 c4 04             	add    $0x4,%esp
        result += (fraction << SHIFT_AMOUNT) / fraction_scale;
 69f:	99                   	cltd
 6a0:	f7 f9                	idiv   %ecx
 6a2:	01 c7                	add    %eax,%edi
    return sign * result;
 6a4:	89 f8                	mov    %edi,%eax
 6a6:	0f af c3             	imul   %ebx,%eax
}
 6a9:	5b                   	pop    %ebx
 6aa:	5e                   	pop    %esi
 6ab:	5f                   	pop    %edi
 6ac:	5d                   	pop    %ebp
 6ad:	c3                   	ret
 6ae:	66 90                	xchg   %ax,%ax

000006b0 <memmove>:


void*
memmove(void *vdst, const void *vsrc, int n)
{
 6b0:	55                   	push   %ebp
 6b1:	89 e5                	mov    %esp,%ebp
 6b3:	57                   	push   %edi
 6b4:	8b 45 10             	mov    0x10(%ebp),%eax
 6b7:	8b 55 08             	mov    0x8(%ebp),%edx
 6ba:	56                   	push   %esi
 6bb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 6be:	85 c0                	test   %eax,%eax
 6c0:	7e 13                	jle    6d5 <memmove+0x25>
 6c2:	01 d0                	add    %edx,%eax
  dst = vdst;
 6c4:	89 d7                	mov    %edx,%edi
 6c6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 6cd:	00 
 6ce:	66 90                	xchg   %ax,%ax
    *dst++ = *src++;
 6d0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 6d1:	39 f8                	cmp    %edi,%eax
 6d3:	75 fb                	jne    6d0 <memmove+0x20>
  return vdst;
}
 6d5:	5e                   	pop    %esi
 6d6:	89 d0                	mov    %edx,%eax
 6d8:	5f                   	pop    %edi
 6d9:	5d                   	pop    %ebp
 6da:	c3                   	ret

000006db <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 6db:	b8 01 00 00 00       	mov    $0x1,%eax
 6e0:	cd 40                	int    $0x40
 6e2:	c3                   	ret

000006e3 <exit>:
SYSCALL(exit)
 6e3:	b8 02 00 00 00       	mov    $0x2,%eax
 6e8:	cd 40                	int    $0x40
 6ea:	c3                   	ret

000006eb <wait>:
SYSCALL(wait)
 6eb:	b8 03 00 00 00       	mov    $0x3,%eax
 6f0:	cd 40                	int    $0x40
 6f2:	c3                   	ret

000006f3 <pipe>:
SYSCALL(pipe)
 6f3:	b8 04 00 00 00       	mov    $0x4,%eax
 6f8:	cd 40                	int    $0x40
 6fa:	c3                   	ret

000006fb <read>:
SYSCALL(read)
 6fb:	b8 05 00 00 00       	mov    $0x5,%eax
 700:	cd 40                	int    $0x40
 702:	c3                   	ret

00000703 <write>:
SYSCALL(write)
 703:	b8 10 00 00 00       	mov    $0x10,%eax
 708:	cd 40                	int    $0x40
 70a:	c3                   	ret

0000070b <close>:
SYSCALL(close)
 70b:	b8 15 00 00 00       	mov    $0x15,%eax
 710:	cd 40                	int    $0x40
 712:	c3                   	ret

00000713 <kill>:
SYSCALL(kill)
 713:	b8 06 00 00 00       	mov    $0x6,%eax
 718:	cd 40                	int    $0x40
 71a:	c3                   	ret

0000071b <exec>:
SYSCALL(exec)
 71b:	b8 07 00 00 00       	mov    $0x7,%eax
 720:	cd 40                	int    $0x40
 722:	c3                   	ret

00000723 <open>:
SYSCALL(open)
 723:	b8 0f 00 00 00       	mov    $0xf,%eax
 728:	cd 40                	int    $0x40
 72a:	c3                   	ret

0000072b <mknod>:
SYSCALL(mknod)
 72b:	b8 11 00 00 00       	mov    $0x11,%eax
 730:	cd 40                	int    $0x40
 732:	c3                   	ret

00000733 <unlink>:
SYSCALL(unlink)
 733:	b8 12 00 00 00       	mov    $0x12,%eax
 738:	cd 40                	int    $0x40
 73a:	c3                   	ret

0000073b <fstat>:
SYSCALL(fstat)
 73b:	b8 08 00 00 00       	mov    $0x8,%eax
 740:	cd 40                	int    $0x40
 742:	c3                   	ret

00000743 <link>:
SYSCALL(link)
 743:	b8 13 00 00 00       	mov    $0x13,%eax
 748:	cd 40                	int    $0x40
 74a:	c3                   	ret

0000074b <mkdir>:
SYSCALL(mkdir)
 74b:	b8 14 00 00 00       	mov    $0x14,%eax
 750:	cd 40                	int    $0x40
 752:	c3                   	ret

00000753 <chdir>:
SYSCALL(chdir)
 753:	b8 09 00 00 00       	mov    $0x9,%eax
 758:	cd 40                	int    $0x40
 75a:	c3                   	ret

0000075b <dup>:
SYSCALL(dup)
 75b:	b8 0a 00 00 00       	mov    $0xa,%eax
 760:	cd 40                	int    $0x40
 762:	c3                   	ret

00000763 <getpid>:
SYSCALL(getpid)
 763:	b8 0b 00 00 00       	mov    $0xb,%eax
 768:	cd 40                	int    $0x40
 76a:	c3                   	ret

0000076b <sbrk>:
SYSCALL(sbrk)
 76b:	b8 0c 00 00 00       	mov    $0xc,%eax
 770:	cd 40                	int    $0x40
 772:	c3                   	ret

00000773 <sleep>:
SYSCALL(sleep)
 773:	b8 0d 00 00 00       	mov    $0xd,%eax
 778:	cd 40                	int    $0x40
 77a:	c3                   	ret

0000077b <uptime>:
SYSCALL(uptime)
 77b:	b8 0e 00 00 00       	mov    $0xe,%eax
 780:	cd 40                	int    $0x40
 782:	c3                   	ret
 783:	66 90                	xchg   %ax,%ax
 785:	66 90                	xchg   %ax,%ax
 787:	66 90                	xchg   %ax,%ax
 789:	66 90                	xchg   %ax,%ax
 78b:	66 90                	xchg   %ax,%ax
 78d:	66 90                	xchg   %ax,%ax
 78f:	90                   	nop

00000790 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 790:	55                   	push   %ebp
 791:	89 e5                	mov    %esp,%ebp
 793:	57                   	push   %edi
 794:	56                   	push   %esi
 795:	53                   	push   %ebx
 796:	89 cb                	mov    %ecx,%ebx
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 798:	89 d1                	mov    %edx,%ecx
{
 79a:	83 ec 3c             	sub    $0x3c,%esp
 79d:	89 45 c0             	mov    %eax,-0x40(%ebp)
  if(sgn && xx < 0){
 7a0:	85 d2                	test   %edx,%edx
 7a2:	0f 89 80 00 00 00    	jns    828 <printint+0x98>
 7a8:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 7ac:	74 7a                	je     828 <printint+0x98>
    x = -xx;
 7ae:	f7 d9                	neg    %ecx
    neg = 1;
 7b0:	b8 01 00 00 00       	mov    $0x1,%eax
  } else {
    x = xx;
  }

  i = 0;
 7b5:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 7b8:	31 f6                	xor    %esi,%esi
 7ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 7c0:	89 c8                	mov    %ecx,%eax
 7c2:	31 d2                	xor    %edx,%edx
 7c4:	89 f7                	mov    %esi,%edi
 7c6:	f7 f3                	div    %ebx
 7c8:	8d 76 01             	lea    0x1(%esi),%esi
 7cb:	0f b6 92 0c 0c 00 00 	movzbl 0xc0c(%edx),%edx
 7d2:	88 54 35 d7          	mov    %dl,-0x29(%ebp,%esi,1)
  }while((x /= base) != 0);
 7d6:	89 ca                	mov    %ecx,%edx
 7d8:	89 c1                	mov    %eax,%ecx
 7da:	39 da                	cmp    %ebx,%edx
 7dc:	73 e2                	jae    7c0 <printint+0x30>
  if(neg)
 7de:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 7e1:	85 c0                	test   %eax,%eax
 7e3:	74 07                	je     7ec <printint+0x5c>
    buf[i++] = '-';
 7e5:	c6 44 35 d8 2d       	movb   $0x2d,-0x28(%ebp,%esi,1)

  while(--i >= 0)
 7ea:	89 f7                	mov    %esi,%edi
 7ec:	8d 5d d8             	lea    -0x28(%ebp),%ebx
 7ef:	8b 75 c0             	mov    -0x40(%ebp),%esi
 7f2:	01 df                	add    %ebx,%edi
 7f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    putc(fd, buf[i]);
 7f8:	0f b6 07             	movzbl (%edi),%eax
  write(fd, &c, 1);
 7fb:	83 ec 04             	sub    $0x4,%esp
 7fe:	88 45 d7             	mov    %al,-0x29(%ebp)
 801:	8d 45 d7             	lea    -0x29(%ebp),%eax
 804:	6a 01                	push   $0x1
 806:	50                   	push   %eax
 807:	56                   	push   %esi
 808:	e8 f6 fe ff ff       	call   703 <write>
  while(--i >= 0)
 80d:	89 f8                	mov    %edi,%eax
 80f:	83 c4 10             	add    $0x10,%esp
 812:	83 ef 01             	sub    $0x1,%edi
 815:	39 c3                	cmp    %eax,%ebx
 817:	75 df                	jne    7f8 <printint+0x68>
}
 819:	8d 65 f4             	lea    -0xc(%ebp),%esp
 81c:	5b                   	pop    %ebx
 81d:	5e                   	pop    %esi
 81e:	5f                   	pop    %edi
 81f:	5d                   	pop    %ebp
 820:	c3                   	ret
 821:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 828:	31 c0                	xor    %eax,%eax
 82a:	eb 89                	jmp    7b5 <printint+0x25>
 82c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000830 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 830:	55                   	push   %ebp
 831:	89 e5                	mov    %esp,%ebp
 833:	57                   	push   %edi
 834:	56                   	push   %esi
 835:	53                   	push   %ebx
 836:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 839:	8b 75 0c             	mov    0xc(%ebp),%esi
{
 83c:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i = 0; fmt[i]; i++){
 83f:	0f b6 1e             	movzbl (%esi),%ebx
 842:	83 c6 01             	add    $0x1,%esi
 845:	84 db                	test   %bl,%bl
 847:	74 67                	je     8b0 <printf+0x80>
 849:	8d 4d 10             	lea    0x10(%ebp),%ecx
 84c:	31 d2                	xor    %edx,%edx
 84e:	89 4d d0             	mov    %ecx,-0x30(%ebp)
 851:	eb 34                	jmp    887 <printf+0x57>
 853:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 858:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 85b:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
 860:	83 f8 25             	cmp    $0x25,%eax
 863:	74 18                	je     87d <printf+0x4d>
  write(fd, &c, 1);
 865:	83 ec 04             	sub    $0x4,%esp
 868:	8d 45 e7             	lea    -0x19(%ebp),%eax
 86b:	88 5d e7             	mov    %bl,-0x19(%ebp)
 86e:	6a 01                	push   $0x1
 870:	50                   	push   %eax
 871:	57                   	push   %edi
 872:	e8 8c fe ff ff       	call   703 <write>
 877:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
 87a:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 87d:	0f b6 1e             	movzbl (%esi),%ebx
 880:	83 c6 01             	add    $0x1,%esi
 883:	84 db                	test   %bl,%bl
 885:	74 29                	je     8b0 <printf+0x80>
    c = fmt[i] & 0xff;
 887:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 88a:	85 d2                	test   %edx,%edx
 88c:	74 ca                	je     858 <printf+0x28>
      }
    } else if(state == '%'){
 88e:	83 fa 25             	cmp    $0x25,%edx
 891:	75 ea                	jne    87d <printf+0x4d>
      if(c == 'd'){
 893:	83 f8 25             	cmp    $0x25,%eax
 896:	0f 84 04 01 00 00    	je     9a0 <printf+0x170>
 89c:	83 e8 63             	sub    $0x63,%eax
 89f:	83 f8 15             	cmp    $0x15,%eax
 8a2:	77 1c                	ja     8c0 <printf+0x90>
 8a4:	ff 24 85 b4 0b 00 00 	jmp    *0xbb4(,%eax,4)
 8ab:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 8b0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8b3:	5b                   	pop    %ebx
 8b4:	5e                   	pop    %esi
 8b5:	5f                   	pop    %edi
 8b6:	5d                   	pop    %ebp
 8b7:	c3                   	ret
 8b8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 8bf:	00 
  write(fd, &c, 1);
 8c0:	83 ec 04             	sub    $0x4,%esp
 8c3:	8d 55 e7             	lea    -0x19(%ebp),%edx
 8c6:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 8ca:	6a 01                	push   $0x1
 8cc:	52                   	push   %edx
 8cd:	89 55 d4             	mov    %edx,-0x2c(%ebp)
 8d0:	57                   	push   %edi
 8d1:	e8 2d fe ff ff       	call   703 <write>
 8d6:	83 c4 0c             	add    $0xc,%esp
 8d9:	88 5d e7             	mov    %bl,-0x19(%ebp)
 8dc:	6a 01                	push   $0x1
 8de:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 8e1:	52                   	push   %edx
 8e2:	57                   	push   %edi
 8e3:	e8 1b fe ff ff       	call   703 <write>
        putc(fd, c);
 8e8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 8eb:	31 d2                	xor    %edx,%edx
 8ed:	eb 8e                	jmp    87d <printf+0x4d>
 8ef:	90                   	nop
        printint(fd, *ap, 16, 0);
 8f0:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 8f3:	83 ec 0c             	sub    $0xc,%esp
 8f6:	b9 10 00 00 00       	mov    $0x10,%ecx
 8fb:	8b 13                	mov    (%ebx),%edx
 8fd:	6a 00                	push   $0x0
 8ff:	89 f8                	mov    %edi,%eax
        ap++;
 901:	83 c3 04             	add    $0x4,%ebx
        printint(fd, *ap, 16, 0);
 904:	e8 87 fe ff ff       	call   790 <printint>
        ap++;
 909:	89 5d d0             	mov    %ebx,-0x30(%ebp)
 90c:	83 c4 10             	add    $0x10,%esp
      state = 0;
 90f:	31 d2                	xor    %edx,%edx
 911:	e9 67 ff ff ff       	jmp    87d <printf+0x4d>
        s = (char*)*ap;
 916:	8b 45 d0             	mov    -0x30(%ebp),%eax
 919:	8b 18                	mov    (%eax),%ebx
        ap++;
 91b:	83 c0 04             	add    $0x4,%eax
 91e:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 921:	85 db                	test   %ebx,%ebx
 923:	0f 84 87 00 00 00    	je     9b0 <printf+0x180>
        while(*s != 0){
 929:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
 92c:	31 d2                	xor    %edx,%edx
        while(*s != 0){
 92e:	84 c0                	test   %al,%al
 930:	0f 84 47 ff ff ff    	je     87d <printf+0x4d>
 936:	8d 55 e7             	lea    -0x19(%ebp),%edx
 939:	89 75 d4             	mov    %esi,-0x2c(%ebp)
 93c:	89 de                	mov    %ebx,%esi
 93e:	89 d3                	mov    %edx,%ebx
  write(fd, &c, 1);
 940:	83 ec 04             	sub    $0x4,%esp
 943:	88 45 e7             	mov    %al,-0x19(%ebp)
          s++;
 946:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
 949:	6a 01                	push   $0x1
 94b:	53                   	push   %ebx
 94c:	57                   	push   %edi
 94d:	e8 b1 fd ff ff       	call   703 <write>
        while(*s != 0){
 952:	0f b6 06             	movzbl (%esi),%eax
 955:	83 c4 10             	add    $0x10,%esp
 958:	84 c0                	test   %al,%al
 95a:	75 e4                	jne    940 <printf+0x110>
      state = 0;
 95c:	8b 75 d4             	mov    -0x2c(%ebp),%esi
 95f:	31 d2                	xor    %edx,%edx
 961:	e9 17 ff ff ff       	jmp    87d <printf+0x4d>
        printint(fd, *ap, 10, 1);
 966:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 969:	83 ec 0c             	sub    $0xc,%esp
 96c:	b9 0a 00 00 00       	mov    $0xa,%ecx
 971:	8b 13                	mov    (%ebx),%edx
 973:	6a 01                	push   $0x1
 975:	eb 88                	jmp    8ff <printf+0xcf>
        putc(fd, *ap);
 977:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
 97a:	83 ec 04             	sub    $0x4,%esp
 97d:	8d 55 e7             	lea    -0x19(%ebp),%edx
        putc(fd, *ap);
 980:	8b 03                	mov    (%ebx),%eax
        ap++;
 982:	83 c3 04             	add    $0x4,%ebx
        putc(fd, *ap);
 985:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 988:	6a 01                	push   $0x1
 98a:	52                   	push   %edx
 98b:	57                   	push   %edi
 98c:	e8 72 fd ff ff       	call   703 <write>
        ap++;
 991:	89 5d d0             	mov    %ebx,-0x30(%ebp)
 994:	83 c4 10             	add    $0x10,%esp
      state = 0;
 997:	31 d2                	xor    %edx,%edx
 999:	e9 df fe ff ff       	jmp    87d <printf+0x4d>
 99e:	66 90                	xchg   %ax,%ax
  write(fd, &c, 1);
 9a0:	83 ec 04             	sub    $0x4,%esp
 9a3:	88 5d e7             	mov    %bl,-0x19(%ebp)
 9a6:	8d 55 e7             	lea    -0x19(%ebp),%edx
 9a9:	6a 01                	push   $0x1
 9ab:	e9 31 ff ff ff       	jmp    8e1 <printf+0xb1>
 9b0:	b8 28 00 00 00       	mov    $0x28,%eax
          s = "(null)";
 9b5:	bb 62 0b 00 00       	mov    $0xb62,%ebx
 9ba:	e9 77 ff ff ff       	jmp    936 <printf+0x106>
 9bf:	90                   	nop

000009c0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 9c0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 9c1:	a1 e0 0f 00 00       	mov    0xfe0,%eax
{
 9c6:	89 e5                	mov    %esp,%ebp
 9c8:	57                   	push   %edi
 9c9:	56                   	push   %esi
 9ca:	53                   	push   %ebx
 9cb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 9ce:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 9d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 9d8:	8b 10                	mov    (%eax),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 9da:	39 c8                	cmp    %ecx,%eax
 9dc:	73 32                	jae    a10 <free+0x50>
 9de:	39 d1                	cmp    %edx,%ecx
 9e0:	72 04                	jb     9e6 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 9e2:	39 d0                	cmp    %edx,%eax
 9e4:	72 32                	jb     a18 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
 9e6:	8b 73 fc             	mov    -0x4(%ebx),%esi
 9e9:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 9ec:	39 fa                	cmp    %edi,%edx
 9ee:	74 30                	je     a20 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 9f0:	89 53 f8             	mov    %edx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 9f3:	8b 50 04             	mov    0x4(%eax),%edx
 9f6:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 9f9:	39 f1                	cmp    %esi,%ecx
 9fb:	74 3a                	je     a37 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 9fd:	89 08                	mov    %ecx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
 9ff:	5b                   	pop    %ebx
  freep = p;
 a00:	a3 e0 0f 00 00       	mov    %eax,0xfe0
}
 a05:	5e                   	pop    %esi
 a06:	5f                   	pop    %edi
 a07:	5d                   	pop    %ebp
 a08:	c3                   	ret
 a09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a10:	39 d0                	cmp    %edx,%eax
 a12:	72 04                	jb     a18 <free+0x58>
 a14:	39 d1                	cmp    %edx,%ecx
 a16:	72 ce                	jb     9e6 <free+0x26>
{
 a18:	89 d0                	mov    %edx,%eax
 a1a:	eb bc                	jmp    9d8 <free+0x18>
 a1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
 a20:	03 72 04             	add    0x4(%edx),%esi
 a23:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 a26:	8b 10                	mov    (%eax),%edx
 a28:	8b 12                	mov    (%edx),%edx
 a2a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 a2d:	8b 50 04             	mov    0x4(%eax),%edx
 a30:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 a33:	39 f1                	cmp    %esi,%ecx
 a35:	75 c6                	jne    9fd <free+0x3d>
    p->s.size += bp->s.size;
 a37:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
 a3a:	a3 e0 0f 00 00       	mov    %eax,0xfe0
    p->s.size += bp->s.size;
 a3f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 a42:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 a45:	89 08                	mov    %ecx,(%eax)
}
 a47:	5b                   	pop    %ebx
 a48:	5e                   	pop    %esi
 a49:	5f                   	pop    %edi
 a4a:	5d                   	pop    %ebp
 a4b:	c3                   	ret
 a4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000a50 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 a50:	55                   	push   %ebp
 a51:	89 e5                	mov    %esp,%ebp
 a53:	57                   	push   %edi
 a54:	56                   	push   %esi
 a55:	53                   	push   %ebx
 a56:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a59:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 a5c:	8b 15 e0 0f 00 00    	mov    0xfe0,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a62:	8d 78 07             	lea    0x7(%eax),%edi
 a65:	c1 ef 03             	shr    $0x3,%edi
 a68:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 a6b:	85 d2                	test   %edx,%edx
 a6d:	0f 84 8d 00 00 00    	je     b00 <malloc+0xb0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a73:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 a75:	8b 48 04             	mov    0x4(%eax),%ecx
 a78:	39 f9                	cmp    %edi,%ecx
 a7a:	73 64                	jae    ae0 <malloc+0x90>
  if(nu < 4096)
 a7c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 a81:	39 df                	cmp    %ebx,%edi
 a83:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 a86:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 a8d:	eb 0a                	jmp    a99 <malloc+0x49>
 a8f:	90                   	nop
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a90:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 a92:	8b 48 04             	mov    0x4(%eax),%ecx
 a95:	39 f9                	cmp    %edi,%ecx
 a97:	73 47                	jae    ae0 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 a99:	89 c2                	mov    %eax,%edx
 a9b:	3b 05 e0 0f 00 00    	cmp    0xfe0,%eax
 aa1:	75 ed                	jne    a90 <malloc+0x40>
  p = sbrk(nu * sizeof(Header));
 aa3:	83 ec 0c             	sub    $0xc,%esp
 aa6:	56                   	push   %esi
 aa7:	e8 bf fc ff ff       	call   76b <sbrk>
  if(p == (char*)-1)
 aac:	83 c4 10             	add    $0x10,%esp
 aaf:	83 f8 ff             	cmp    $0xffffffff,%eax
 ab2:	74 1c                	je     ad0 <malloc+0x80>
  hp->s.size = nu;
 ab4:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 ab7:	83 ec 0c             	sub    $0xc,%esp
 aba:	83 c0 08             	add    $0x8,%eax
 abd:	50                   	push   %eax
 abe:	e8 fd fe ff ff       	call   9c0 <free>
  return freep;
 ac3:	8b 15 e0 0f 00 00    	mov    0xfe0,%edx
      if((p = morecore(nunits)) == 0)
 ac9:	83 c4 10             	add    $0x10,%esp
 acc:	85 d2                	test   %edx,%edx
 ace:	75 c0                	jne    a90 <malloc+0x40>
        return 0;
  }
}
 ad0:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 ad3:	31 c0                	xor    %eax,%eax
}
 ad5:	5b                   	pop    %ebx
 ad6:	5e                   	pop    %esi
 ad7:	5f                   	pop    %edi
 ad8:	5d                   	pop    %ebp
 ad9:	c3                   	ret
 ada:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 ae0:	39 cf                	cmp    %ecx,%edi
 ae2:	74 4c                	je     b30 <malloc+0xe0>
        p->s.size -= nunits;
 ae4:	29 f9                	sub    %edi,%ecx
 ae6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 ae9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 aec:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 aef:	89 15 e0 0f 00 00    	mov    %edx,0xfe0
}
 af5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 af8:	83 c0 08             	add    $0x8,%eax
}
 afb:	5b                   	pop    %ebx
 afc:	5e                   	pop    %esi
 afd:	5f                   	pop    %edi
 afe:	5d                   	pop    %ebp
 aff:	c3                   	ret
    base.s.ptr = freep = prevp = &base;
 b00:	c7 05 e0 0f 00 00 e4 	movl   $0xfe4,0xfe0
 b07:	0f 00 00 
    base.s.size = 0;
 b0a:	b8 e4 0f 00 00       	mov    $0xfe4,%eax
    base.s.ptr = freep = prevp = &base;
 b0f:	c7 05 e4 0f 00 00 e4 	movl   $0xfe4,0xfe4
 b16:	0f 00 00 
    base.s.size = 0;
 b19:	c7 05 e8 0f 00 00 00 	movl   $0x0,0xfe8
 b20:	00 00 00 
    if(p->s.size >= nunits){
 b23:	e9 54 ff ff ff       	jmp    a7c <malloc+0x2c>
 b28:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 b2f:	00 
        prevp->s.ptr = p->s.ptr;
 b30:	8b 08                	mov    (%eax),%ecx
 b32:	89 0a                	mov    %ecx,(%edx)
 b34:	eb b9                	jmp    aef <malloc+0x9f>
