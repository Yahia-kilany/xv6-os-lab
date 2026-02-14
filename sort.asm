
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
    
    if(argc < 2) {
  30:	83 f8 01             	cmp    $0x1,%eax
  33:	7e 79                	jle    ae <main+0xae>
  35:	8d 76 00             	lea    0x0(%esi),%esi
        printf(2, "Example: sort 5 2 8 1 9\n");
        exit();
    }
    
    for(int i = 1; i < argc && count < MAX_NUMBERS; i++) {
        numbers[count] = atoi(argv[i]);
  38:	8b 85 54 fe ff ff    	mov    -0x1ac(%ebp),%eax
  3e:	83 ec 0c             	sub    $0xc,%esp
  41:	89 de                	mov    %ebx,%esi
    for(int i = 1; i < argc && count < MAX_NUMBERS; i++) {
  43:	83 c6 02             	add    $0x2,%esi
        numbers[count] = atoi(argv[i]);
  46:	ff 74 98 04          	push   0x4(%eax,%ebx,4)
  4a:	e8 c1 04 00 00       	call   510 <atoi>
  4f:	89 d9                	mov    %ebx,%ecx
    for(int i = 1; i < argc && count < MAX_NUMBERS; i++) {
  51:	83 c4 10             	add    $0x10,%esp
        numbers[count] = atoi(argv[i]);
  54:	89 04 9f             	mov    %eax,(%edi,%ebx,4)
        count++;
  57:	83 c3 01             	add    $0x1,%ebx
    for(int i = 1; i < argc && count < MAX_NUMBERS; i++) {
  5a:	39 b5 50 fe ff ff    	cmp    %esi,-0x1b0(%ebp)
  60:	7e 05                	jle    67 <main+0x67>
  62:	83 fb 63             	cmp    $0x63,%ebx
  65:	7e d1                	jle    38 <main+0x38>
    if(count == 0) {
        printf(2, "No numbers provided\n");
        exit();
    }
    
    printf(1, "Original array: ");
  67:	83 ec 08             	sub    $0x8,%esp
  6a:	89 8d 54 fe ff ff    	mov    %ecx,-0x1ac(%ebp)
  70:	68 14 0a 00 00       	push   $0xa14
  75:	6a 01                	push   $0x1
  77:	e8 74 06 00 00       	call   6f0 <printf>
    printArray(numbers, count);
  7c:	5e                   	pop    %esi
  7d:	58                   	pop    %eax
  7e:	53                   	push   %ebx
  7f:	57                   	push   %edi
  80:	e8 4b 02 00 00       	call   2d0 <printArray>
    if(l >= r) return;
  85:	8b 8d 54 fe ff ff    	mov    -0x1ac(%ebp),%ecx
  8b:	83 c4 10             	add    $0x10,%esp
  8e:	85 c9                	test   %ecx,%ecx
  90:	75 3e                	jne    d0 <main+0xd0>
    
    mergeSort(numbers, 0, count - 1);
    
    printf(1, "Sorted array: ");
  92:	50                   	push   %eax
  93:	50                   	push   %eax
  94:	68 25 0a 00 00       	push   $0xa25
  99:	6a 01                	push   $0x1
  9b:	e8 50 06 00 00       	call   6f0 <printf>
    printArray(numbers, count);
  a0:	5a                   	pop    %edx
  a1:	59                   	pop    %ecx
  a2:	53                   	push   %ebx
  a3:	57                   	push   %edi
  a4:	e8 27 02 00 00       	call   2d0 <printArray>
    
    exit();
  a9:	e8 f5 04 00 00       	call   5a3 <exit>
        printf(2, "Usage: %s <number1> <number2> ... <numberN>\n", argv[0]);
  ae:	50                   	push   %eax
  af:	ff 32                	push   (%edx)
  b1:	68 3c 0a 00 00       	push   $0xa3c
  b6:	6a 02                	push   $0x2
  b8:	e8 33 06 00 00       	call   6f0 <printf>
        printf(2, "Example: sort 5 2 8 1 9\n");
  bd:	58                   	pop    %eax
  be:	5a                   	pop    %edx
  bf:	68 fb 09 00 00       	push   $0x9fb
  c4:	6a 02                	push   $0x2
  c6:	e8 25 06 00 00       	call   6f0 <printf>
        exit();
  cb:	e8 d3 04 00 00       	call   5a3 <exit>
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
  e6:	83 ec 1c             	sub    $0x1c,%esp
    int temp[r-l+1];
  e9:	8b 45 14             	mov    0x14(%ebp),%eax
  ec:	2b 45 0c             	sub    0xc(%ebp),%eax
  ef:	8d 04 85 13 00 00 00 	lea    0x13(,%eax,4),%eax
  f6:	89 e3                	mov    %esp,%ebx
void merge(int A[], int l, int m, int r) {
  f8:	8b 55 08             	mov    0x8(%ebp),%edx
    int temp[r-l+1];
  fb:	89 c1                	mov    %eax,%ecx
  fd:	25 00 f0 ff ff       	and    $0xfffff000,%eax
 102:	29 c3                	sub    %eax,%ebx
 104:	83 e1 f0             	and    $0xfffffff0,%ecx
 107:	39 dc                	cmp    %ebx,%esp
 109:	74 12                	je     11d <merge+0x3d>
 10b:	81 ec 00 10 00 00    	sub    $0x1000,%esp
 111:	83 8c 24 fc 0f 00 00 	orl    $0x0,0xffc(%esp)
 118:	00 
 119:	39 dc                	cmp    %ebx,%esp
 11b:	75 ee                	jne    10b <merge+0x2b>
 11d:	81 e1 ff 0f 00 00    	and    $0xfff,%ecx
 123:	29 cc                	sub    %ecx,%esp
 125:	85 c9                	test   %ecx,%ecx
 127:	0f 85 13 01 00 00    	jne    240 <merge+0x160>
    int i = l, j = m+1, k = 0;
 12d:	8b 45 10             	mov    0x10(%ebp),%eax
 130:	8b 5d 0c             	mov    0xc(%ebp),%ebx
    int temp[r-l+1];
 133:	89 65 e4             	mov    %esp,-0x1c(%ebp)
    int i = l, j = m+1, k = 0;
 136:	31 c9                	xor    %ecx,%ecx
 138:	8d 70 01             	lea    0x1(%eax),%esi
    while(i <= m && j <= r) {
 13b:	39 45 0c             	cmp    %eax,0xc(%ebp)
 13e:	0f 8f 06 01 00 00    	jg     24a <merge+0x16a>
 144:	39 75 14             	cmp    %esi,0x14(%ebp)
 147:	7d 1f                	jge    168 <merge+0x88>
 149:	e9 fc 00 00 00       	jmp    24a <merge+0x16a>
 14e:	66 90                	xchg   %ax,%ax
            temp[k] = A[i];
 150:	89 f8                	mov    %edi,%eax
 152:	8b 7d e4             	mov    -0x1c(%ebp),%edi
            i++;
 155:	83 c3 01             	add    $0x1,%ebx
 158:	89 04 8f             	mov    %eax,(%edi,%ecx,4)
        k++;
 15b:	83 c1 01             	add    $0x1,%ecx
    while(i <= m && j <= r) {
 15e:	39 5d 10             	cmp    %ebx,0x10(%ebp)
 161:	7c 20                	jl     183 <merge+0xa3>
 163:	39 75 14             	cmp    %esi,0x14(%ebp)
 166:	7c 28                	jl     190 <merge+0xb0>
        if(A[i] <= A[j]) {
 168:	8b 3c 9a             	mov    (%edx,%ebx,4),%edi
 16b:	8b 04 b2             	mov    (%edx,%esi,4),%eax
 16e:	39 c7                	cmp    %eax,%edi
 170:	7e de                	jle    150 <merge+0x70>
            j++;
 172:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 175:	83 c6 01             	add    $0x1,%esi
 178:	89 04 8f             	mov    %eax,(%edi,%ecx,4)
        k++;
 17b:	83 c1 01             	add    $0x1,%ecx
    while(i <= m && j <= r) {
 17e:	39 5d 10             	cmp    %ebx,0x10(%ebp)
 181:	7d e0                	jge    163 <merge+0x83>
    while(j <= r) {
 183:	39 75 14             	cmp    %esi,0x14(%ebp)
 186:	7d 54                	jge    1dc <merge+0xfc>
 188:	e9 88 00 00 00       	jmp    215 <merge+0x135>
 18d:	8d 76 00             	lea    0x0(%esi),%esi
    while(i <= m) {
 190:	39 5d 10             	cmp    %ebx,0x10(%ebp)
 193:	7c ee                	jl     183 <merge+0xa3>
 195:	89 c8                	mov    %ecx,%eax
 197:	8b 7d e4             	mov    -0x1c(%ebp),%edi
    int i = l, j = m+1, k = 0;
 19a:	89 5d e0             	mov    %ebx,-0x20(%ebp)
 19d:	29 d8                	sub    %ebx,%eax
 19f:	89 4d dc             	mov    %ecx,-0x24(%ebp)
 1a2:	8b 4d 10             	mov    0x10(%ebp),%ecx
 1a5:	8d 3c 87             	lea    (%edi,%eax,4),%edi
 1a8:	89 d8                	mov    %ebx,%eax
 1aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        temp[k] = A[i];
 1b0:	8b 1c 82             	mov    (%edx,%eax,4),%ebx
 1b3:	89 1c 87             	mov    %ebx,(%edi,%eax,4)
        i++;
 1b6:	83 c0 01             	add    $0x1,%eax
    while(i <= m) {
 1b9:	39 c1                	cmp    %eax,%ecx
 1bb:	7d f3                	jge    1b0 <merge+0xd0>
 1bd:	8b 5d e0             	mov    -0x20(%ebp),%ebx
 1c0:	8b 45 10             	mov    0x10(%ebp),%eax
 1c3:	8b 4d dc             	mov    -0x24(%ebp),%ecx
 1c6:	29 d8                	sub    %ebx,%eax
 1c8:	3b 5d 10             	cmp    0x10(%ebp),%ebx
 1cb:	bb 00 00 00 00       	mov    $0x0,%ebx
 1d0:	0f 4f c3             	cmovg  %ebx,%eax
 1d3:	8d 4c 01 01          	lea    0x1(%ecx,%eax,1),%ecx
    while(j <= r) {
 1d7:	3b 75 14             	cmp    0x14(%ebp),%esi
 1da:	7f 35                	jg     211 <merge+0x131>
 1dc:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 1df:	89 c8                	mov    %ecx,%eax
    int i = l, j = m+1, k = 0;
 1e1:	89 4d e0             	mov    %ecx,-0x20(%ebp)
 1e4:	29 f0                	sub    %esi,%eax
 1e6:	8d 1c 87             	lea    (%edi,%eax,4),%ebx
 1e9:	8b 7d 14             	mov    0x14(%ebp),%edi
 1ec:	89 f0                	mov    %esi,%eax
 1ee:	66 90                	xchg   %ax,%ax
        temp[k] = A[j];
 1f0:	8b 0c 82             	mov    (%edx,%eax,4),%ecx
 1f3:	89 0c 83             	mov    %ecx,(%ebx,%eax,4)
        j++;
 1f6:	83 c0 01             	add    $0x1,%eax
    while(j <= r) {
 1f9:	39 c7                	cmp    %eax,%edi
 1fb:	7d f3                	jge    1f0 <merge+0x110>
 1fd:	8b 45 14             	mov    0x14(%ebp),%eax
 200:	31 db                	xor    %ebx,%ebx
 202:	8b 4d e0             	mov    -0x20(%ebp),%ecx
 205:	29 f0                	sub    %esi,%eax
 207:	3b 75 14             	cmp    0x14(%ebp),%esi
 20a:	0f 4f c3             	cmovg  %ebx,%eax
 20d:	8d 4c 01 01          	lea    0x1(%ecx,%eax,1),%ecx
    for(int b = 0; b < k; b++) {
 211:	85 c9                	test   %ecx,%ecx
 213:	7e 22                	jle    237 <merge+0x157>
 215:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 218:	8b 75 0c             	mov    0xc(%ebp),%esi
 21b:	8d 1c 88             	lea    (%eax,%ecx,4),%ebx
 21e:	8d 14 b2             	lea    (%edx,%esi,4),%edx
 221:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        A[l + b] = temp[b];
 228:	8b 08                	mov    (%eax),%ecx
    for(int b = 0; b < k; b++) {
 22a:	83 c0 04             	add    $0x4,%eax
 22d:	83 c2 04             	add    $0x4,%edx
        A[l + b] = temp[b];
 230:	89 4a fc             	mov    %ecx,-0x4(%edx)
    for(int b = 0; b < k; b++) {
 233:	39 d8                	cmp    %ebx,%eax
 235:	75 f1                	jne    228 <merge+0x148>
}
 237:	8d 65 f4             	lea    -0xc(%ebp),%esp
 23a:	5b                   	pop    %ebx
 23b:	5e                   	pop    %esi
 23c:	5f                   	pop    %edi
 23d:	5d                   	pop    %ebp
 23e:	c3                   	ret
 23f:	90                   	nop
    int temp[r-l+1];
 240:	83 4c 0c fc 00       	orl    $0x0,-0x4(%esp,%ecx,1)
 245:	e9 e3 fe ff ff       	jmp    12d <merge+0x4d>
    while(i <= m) {
 24a:	8b 45 10             	mov    0x10(%ebp),%eax
 24d:	39 c3                	cmp    %eax,%ebx
 24f:	0f 8e 40 ff ff ff    	jle    195 <merge+0xb5>
    while(j <= r) {
 255:	39 75 14             	cmp    %esi,0x14(%ebp)
 258:	7d 82                	jge    1dc <merge+0xfc>
 25a:	eb db                	jmp    237 <merge+0x157>
 25c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000260 <mergeSort.part.0>:
void mergeSort(int A[], int l, int r) {
 260:	55                   	push   %ebp
 261:	89 e5                	mov    %esp,%ebp
 263:	57                   	push   %edi
 264:	89 cf                	mov    %ecx,%edi
 266:	56                   	push   %esi
 267:	89 d6                	mov    %edx,%esi
 269:	53                   	push   %ebx
    int m = l + (r - l)/2;
 26a:	89 cb                	mov    %ecx,%ebx
 26c:	29 d3                	sub    %edx,%ebx
 26e:	d1 fb                	sar    $1,%ebx
 270:	01 d3                	add    %edx,%ebx
void mergeSort(int A[], int l, int r) {
 272:	83 ec 1c             	sub    $0x1c,%esp
    if(l >= r) return;
 275:	39 da                	cmp    %ebx,%edx
 277:	7d 0d                	jge    286 <mergeSort.part.0+0x26>
 279:	89 d9                	mov    %ebx,%ecx
 27b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 27e:	e8 dd ff ff ff       	call   260 <mergeSort.part.0>
 283:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    mergeSort(A, m+1, r);
 286:	8d 53 01             	lea    0x1(%ebx),%edx
    if(l >= r) return;
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
    if(l >= r) return;
 2bc:	39 ca                	cmp    %ecx,%edx
 2be:	7c 08                	jl     2c8 <mergeSort+0x18>
}
 2c0:	5d                   	pop    %ebp
 2c1:	c3                   	ret
 2c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 2c8:	5d                   	pop    %ebp
 2c9:	eb 95                	jmp    260 <mergeSort.part.0>
 2cb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

000002d0 <printArray>:
void printArray(int arr[], int n) {
 2d0:	55                   	push   %ebp
 2d1:	89 e5                	mov    %esp,%ebp
 2d3:	57                   	push   %edi
 2d4:	56                   	push   %esi
 2d5:	31 f6                	xor    %esi,%esi
 2d7:	53                   	push   %ebx
 2d8:	83 ec 1c             	sub    $0x1c,%esp
 2db:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 2de:	8b 7d 08             	mov    0x8(%ebp),%edi
        if(i < n - 1) {
 2e1:	8d 43 ff             	lea    -0x1(%ebx),%eax
 2e4:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    for(int i = 0; i < n; i++) {
 2e7:	85 db                	test   %ebx,%ebx
 2e9:	7e 38                	jle    323 <printArray+0x53>
 2eb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        printf(1, "%d", arr[i]);
 2f0:	83 ec 04             	sub    $0x4,%esp
 2f3:	ff 34 b7             	push   (%edi,%esi,4)
 2f6:	68 f8 09 00 00       	push   $0x9f8
 2fb:	6a 01                	push   $0x1
 2fd:	e8 ee 03 00 00       	call   6f0 <printf>
        if(i < n - 1) {
 302:	83 c4 10             	add    $0x10,%esp
 305:	39 75 e4             	cmp    %esi,-0x1c(%ebp)
 308:	7e 12                	jle    31c <printArray+0x4c>
            printf(1, " ");
 30a:	83 ec 08             	sub    $0x8,%esp
 30d:	68 32 0a 00 00       	push   $0xa32
 312:	6a 01                	push   $0x1
 314:	e8 d7 03 00 00       	call   6f0 <printf>
 319:	83 c4 10             	add    $0x10,%esp
    for(int i = 0; i < n; i++) {
 31c:	83 c6 01             	add    $0x1,%esi
 31f:	39 f3                	cmp    %esi,%ebx
 321:	75 cd                	jne    2f0 <printArray+0x20>
    printf(1, "\n");
 323:	c7 45 0c 12 0a 00 00 	movl   $0xa12,0xc(%ebp)
 32a:	c7 45 08 01 00 00 00 	movl   $0x1,0x8(%ebp)
}
 331:	8d 65 f4             	lea    -0xc(%ebp),%esp
 334:	5b                   	pop    %ebx
 335:	5e                   	pop    %esi
 336:	5f                   	pop    %edi
 337:	5d                   	pop    %ebp
    printf(1, "\n");
 338:	e9 b3 03 00 00       	jmp    6f0 <printf>
 33d:	66 90                	xchg   %ax,%ax
 33f:	90                   	nop

00000340 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 340:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 341:	31 c0                	xor    %eax,%eax
{
 343:	89 e5                	mov    %esp,%ebp
 345:	53                   	push   %ebx
 346:	8b 4d 08             	mov    0x8(%ebp),%ecx
 349:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 34c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 350:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 354:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 357:	83 c0 01             	add    $0x1,%eax
 35a:	84 d2                	test   %dl,%dl
 35c:	75 f2                	jne    350 <strcpy+0x10>
    ;
  return os;
}
 35e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 361:	89 c8                	mov    %ecx,%eax
 363:	c9                   	leave
 364:	c3                   	ret
 365:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 36c:	00 
 36d:	8d 76 00             	lea    0x0(%esi),%esi

00000370 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 370:	55                   	push   %ebp
 371:	89 e5                	mov    %esp,%ebp
 373:	53                   	push   %ebx
 374:	8b 55 08             	mov    0x8(%ebp),%edx
 377:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 37a:	0f b6 02             	movzbl (%edx),%eax
 37d:	84 c0                	test   %al,%al
 37f:	75 17                	jne    398 <strcmp+0x28>
 381:	eb 3a                	jmp    3bd <strcmp+0x4d>
 383:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 388:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 38c:	83 c2 01             	add    $0x1,%edx
 38f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 392:	84 c0                	test   %al,%al
 394:	74 1a                	je     3b0 <strcmp+0x40>
 396:	89 d9                	mov    %ebx,%ecx
 398:	0f b6 19             	movzbl (%ecx),%ebx
 39b:	38 c3                	cmp    %al,%bl
 39d:	74 e9                	je     388 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 39f:	29 d8                	sub    %ebx,%eax
}
 3a1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3a4:	c9                   	leave
 3a5:	c3                   	ret
 3a6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 3ad:	00 
 3ae:	66 90                	xchg   %ax,%ax
  return (uchar)*p - (uchar)*q;
 3b0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 3b4:	31 c0                	xor    %eax,%eax
 3b6:	29 d8                	sub    %ebx,%eax
}
 3b8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3bb:	c9                   	leave
 3bc:	c3                   	ret
  return (uchar)*p - (uchar)*q;
 3bd:	0f b6 19             	movzbl (%ecx),%ebx
 3c0:	31 c0                	xor    %eax,%eax
 3c2:	eb db                	jmp    39f <strcmp+0x2f>
 3c4:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 3cb:	00 
 3cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000003d0 <strlen>:

uint
strlen(const char *s)
{
 3d0:	55                   	push   %ebp
 3d1:	89 e5                	mov    %esp,%ebp
 3d3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 3d6:	80 3a 00             	cmpb   $0x0,(%edx)
 3d9:	74 15                	je     3f0 <strlen+0x20>
 3db:	31 c0                	xor    %eax,%eax
 3dd:	8d 76 00             	lea    0x0(%esi),%esi
 3e0:	83 c0 01             	add    $0x1,%eax
 3e3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 3e7:	89 c1                	mov    %eax,%ecx
 3e9:	75 f5                	jne    3e0 <strlen+0x10>
    ;
  return n;
}
 3eb:	89 c8                	mov    %ecx,%eax
 3ed:	5d                   	pop    %ebp
 3ee:	c3                   	ret
 3ef:	90                   	nop
  for(n = 0; s[n]; n++)
 3f0:	31 c9                	xor    %ecx,%ecx
}
 3f2:	5d                   	pop    %ebp
 3f3:	89 c8                	mov    %ecx,%eax
 3f5:	c3                   	ret
 3f6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 3fd:	00 
 3fe:	66 90                	xchg   %ax,%ax

00000400 <memset>:

void*
memset(void *dst, int c, uint n)
{
 400:	55                   	push   %ebp
 401:	89 e5                	mov    %esp,%ebp
 403:	57                   	push   %edi
 404:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 407:	8b 4d 10             	mov    0x10(%ebp),%ecx
 40a:	8b 45 0c             	mov    0xc(%ebp),%eax
 40d:	89 d7                	mov    %edx,%edi
 40f:	fc                   	cld
 410:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 412:	8b 7d fc             	mov    -0x4(%ebp),%edi
 415:	89 d0                	mov    %edx,%eax
 417:	c9                   	leave
 418:	c3                   	ret
 419:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000420 <strchr>:

char*
strchr(const char *s, char c)
{
 420:	55                   	push   %ebp
 421:	89 e5                	mov    %esp,%ebp
 423:	8b 45 08             	mov    0x8(%ebp),%eax
 426:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 42a:	0f b6 10             	movzbl (%eax),%edx
 42d:	84 d2                	test   %dl,%dl
 42f:	75 12                	jne    443 <strchr+0x23>
 431:	eb 1d                	jmp    450 <strchr+0x30>
 433:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 438:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 43c:	83 c0 01             	add    $0x1,%eax
 43f:	84 d2                	test   %dl,%dl
 441:	74 0d                	je     450 <strchr+0x30>
    if(*s == c)
 443:	38 d1                	cmp    %dl,%cl
 445:	75 f1                	jne    438 <strchr+0x18>
      return (char*)s;
  return 0;
}
 447:	5d                   	pop    %ebp
 448:	c3                   	ret
 449:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 450:	31 c0                	xor    %eax,%eax
}
 452:	5d                   	pop    %ebp
 453:	c3                   	ret
 454:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 45b:	00 
 45c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000460 <gets>:

char*
gets(char *buf, int max)
{
 460:	55                   	push   %ebp
 461:	89 e5                	mov    %esp,%ebp
 463:	57                   	push   %edi
 464:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 465:	8d 75 e7             	lea    -0x19(%ebp),%esi
{
 468:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 469:	31 db                	xor    %ebx,%ebx
{
 46b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 46e:	eb 27                	jmp    497 <gets+0x37>
    cc = read(0, &c, 1);
 470:	83 ec 04             	sub    $0x4,%esp
 473:	6a 01                	push   $0x1
 475:	56                   	push   %esi
 476:	6a 00                	push   $0x0
 478:	e8 3e 01 00 00       	call   5bb <read>
    if(cc < 1)
 47d:	83 c4 10             	add    $0x10,%esp
 480:	85 c0                	test   %eax,%eax
 482:	7e 1d                	jle    4a1 <gets+0x41>
      break;
    buf[i++] = c;
 484:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 488:	8b 55 08             	mov    0x8(%ebp),%edx
 48b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 48f:	3c 0a                	cmp    $0xa,%al
 491:	74 10                	je     4a3 <gets+0x43>
 493:	3c 0d                	cmp    $0xd,%al
 495:	74 0c                	je     4a3 <gets+0x43>
  for(i=0; i+1 < max; ){
 497:	89 df                	mov    %ebx,%edi
 499:	83 c3 01             	add    $0x1,%ebx
 49c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 49f:	7c cf                	jl     470 <gets+0x10>
 4a1:	89 fb                	mov    %edi,%ebx
      break;
  }
  buf[i] = '\0';
 4a3:	8b 45 08             	mov    0x8(%ebp),%eax
 4a6:	c6 04 18 00          	movb   $0x0,(%eax,%ebx,1)
  return buf;
}
 4aa:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4ad:	5b                   	pop    %ebx
 4ae:	5e                   	pop    %esi
 4af:	5f                   	pop    %edi
 4b0:	5d                   	pop    %ebp
 4b1:	c3                   	ret
 4b2:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 4b9:	00 
 4ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000004c0 <stat>:

int
stat(const char *n, struct stat *st)
{
 4c0:	55                   	push   %ebp
 4c1:	89 e5                	mov    %esp,%ebp
 4c3:	56                   	push   %esi
 4c4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 4c5:	83 ec 08             	sub    $0x8,%esp
 4c8:	6a 00                	push   $0x0
 4ca:	ff 75 08             	push   0x8(%ebp)
 4cd:	e8 11 01 00 00       	call   5e3 <open>
  if(fd < 0)
 4d2:	83 c4 10             	add    $0x10,%esp
 4d5:	85 c0                	test   %eax,%eax
 4d7:	78 27                	js     500 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 4d9:	83 ec 08             	sub    $0x8,%esp
 4dc:	ff 75 0c             	push   0xc(%ebp)
 4df:	89 c3                	mov    %eax,%ebx
 4e1:	50                   	push   %eax
 4e2:	e8 14 01 00 00       	call   5fb <fstat>
  close(fd);
 4e7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 4ea:	89 c6                	mov    %eax,%esi
  close(fd);
 4ec:	e8 da 00 00 00       	call   5cb <close>
  return r;
 4f1:	83 c4 10             	add    $0x10,%esp
}
 4f4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 4f7:	89 f0                	mov    %esi,%eax
 4f9:	5b                   	pop    %ebx
 4fa:	5e                   	pop    %esi
 4fb:	5d                   	pop    %ebp
 4fc:	c3                   	ret
 4fd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 500:	be ff ff ff ff       	mov    $0xffffffff,%esi
 505:	eb ed                	jmp    4f4 <stat+0x34>
 507:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 50e:	00 
 50f:	90                   	nop

00000510 <atoi>:

int
atoi(const char *s)
{
 510:	55                   	push   %ebp
 511:	89 e5                	mov    %esp,%ebp
 513:	56                   	push   %esi
 514:	be 01 00 00 00       	mov    $0x1,%esi
 519:	53                   	push   %ebx
 51a:	8b 5d 08             	mov    0x8(%ebp),%ebx
  int n, sign;
  n = 0;
  sign = 1;
  if(*s == '-'||*s=='+')
 51d:	0f be 13             	movsbl (%ebx),%edx
 520:	8d 42 d5             	lea    -0x2b(%edx),%eax
 523:	a8 fd                	test   $0xfd,%al
 525:	75 15                	jne    53c <atoi+0x2c>
  {
    sign = (*s == '-'?  -1  : 1);
 527:	31 c0                	xor    %eax,%eax
 529:	80 fa 2d             	cmp    $0x2d,%dl
    s++;
  }
  while('0' <= *s && *s <= '9')
 52c:	0f be 53 01          	movsbl 0x1(%ebx),%edx
    sign = (*s == '-'?  -1  : 1);
 530:	0f 95 c0             	setne  %al
    s++;
 533:	83 c3 01             	add    $0x1,%ebx
    sign = (*s == '-'?  -1  : 1);
 536:	89 c6                	mov    %eax,%esi
 538:	8d 74 36 ff          	lea    -0x1(%esi,%esi,1),%esi
  while('0' <= *s && *s <= '9')
 53c:	8d 4a d0             	lea    -0x30(%edx),%ecx
 53f:	31 c0                	xor    %eax,%eax
 541:	80 f9 09             	cmp    $0x9,%cl
 544:	77 22                	ja     568 <atoi+0x58>
 546:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 54d:	00 
 54e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 550:	83 c3 01             	add    $0x1,%ebx
 553:	8d 04 80             	lea    (%eax,%eax,4),%eax
 556:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
 55a:	0f be 13             	movsbl (%ebx),%edx
 55d:	8d 4a d0             	lea    -0x30(%edx),%ecx
 560:	80 f9 09             	cmp    $0x9,%cl
 563:	76 eb                	jbe    550 <atoi+0x40>
  return n*sign;
 565:	0f af c6             	imul   %esi,%eax
}
 568:	5b                   	pop    %ebx
 569:	5e                   	pop    %esi
 56a:	5d                   	pop    %ebp
 56b:	c3                   	ret
 56c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000570 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 570:	55                   	push   %ebp
 571:	89 e5                	mov    %esp,%ebp
 573:	57                   	push   %edi
 574:	8b 45 10             	mov    0x10(%ebp),%eax
 577:	8b 55 08             	mov    0x8(%ebp),%edx
 57a:	56                   	push   %esi
 57b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 57e:	85 c0                	test   %eax,%eax
 580:	7e 13                	jle    595 <memmove+0x25>
 582:	01 d0                	add    %edx,%eax
  dst = vdst;
 584:	89 d7                	mov    %edx,%edi
 586:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 58d:	00 
 58e:	66 90                	xchg   %ax,%ax
    *dst++ = *src++;
 590:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 591:	39 f8                	cmp    %edi,%eax
 593:	75 fb                	jne    590 <memmove+0x20>
  return vdst;
}
 595:	5e                   	pop    %esi
 596:	89 d0                	mov    %edx,%eax
 598:	5f                   	pop    %edi
 599:	5d                   	pop    %ebp
 59a:	c3                   	ret

0000059b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 59b:	b8 01 00 00 00       	mov    $0x1,%eax
 5a0:	cd 40                	int    $0x40
 5a2:	c3                   	ret

000005a3 <exit>:
SYSCALL(exit)
 5a3:	b8 02 00 00 00       	mov    $0x2,%eax
 5a8:	cd 40                	int    $0x40
 5aa:	c3                   	ret

000005ab <wait>:
SYSCALL(wait)
 5ab:	b8 03 00 00 00       	mov    $0x3,%eax
 5b0:	cd 40                	int    $0x40
 5b2:	c3                   	ret

000005b3 <pipe>:
SYSCALL(pipe)
 5b3:	b8 04 00 00 00       	mov    $0x4,%eax
 5b8:	cd 40                	int    $0x40
 5ba:	c3                   	ret

000005bb <read>:
SYSCALL(read)
 5bb:	b8 05 00 00 00       	mov    $0x5,%eax
 5c0:	cd 40                	int    $0x40
 5c2:	c3                   	ret

000005c3 <write>:
SYSCALL(write)
 5c3:	b8 10 00 00 00       	mov    $0x10,%eax
 5c8:	cd 40                	int    $0x40
 5ca:	c3                   	ret

000005cb <close>:
SYSCALL(close)
 5cb:	b8 15 00 00 00       	mov    $0x15,%eax
 5d0:	cd 40                	int    $0x40
 5d2:	c3                   	ret

000005d3 <kill>:
SYSCALL(kill)
 5d3:	b8 06 00 00 00       	mov    $0x6,%eax
 5d8:	cd 40                	int    $0x40
 5da:	c3                   	ret

000005db <exec>:
SYSCALL(exec)
 5db:	b8 07 00 00 00       	mov    $0x7,%eax
 5e0:	cd 40                	int    $0x40
 5e2:	c3                   	ret

000005e3 <open>:
SYSCALL(open)
 5e3:	b8 0f 00 00 00       	mov    $0xf,%eax
 5e8:	cd 40                	int    $0x40
 5ea:	c3                   	ret

000005eb <mknod>:
SYSCALL(mknod)
 5eb:	b8 11 00 00 00       	mov    $0x11,%eax
 5f0:	cd 40                	int    $0x40
 5f2:	c3                   	ret

000005f3 <unlink>:
SYSCALL(unlink)
 5f3:	b8 12 00 00 00       	mov    $0x12,%eax
 5f8:	cd 40                	int    $0x40
 5fa:	c3                   	ret

000005fb <fstat>:
SYSCALL(fstat)
 5fb:	b8 08 00 00 00       	mov    $0x8,%eax
 600:	cd 40                	int    $0x40
 602:	c3                   	ret

00000603 <link>:
SYSCALL(link)
 603:	b8 13 00 00 00       	mov    $0x13,%eax
 608:	cd 40                	int    $0x40
 60a:	c3                   	ret

0000060b <mkdir>:
SYSCALL(mkdir)
 60b:	b8 14 00 00 00       	mov    $0x14,%eax
 610:	cd 40                	int    $0x40
 612:	c3                   	ret

00000613 <chdir>:
SYSCALL(chdir)
 613:	b8 09 00 00 00       	mov    $0x9,%eax
 618:	cd 40                	int    $0x40
 61a:	c3                   	ret

0000061b <dup>:
SYSCALL(dup)
 61b:	b8 0a 00 00 00       	mov    $0xa,%eax
 620:	cd 40                	int    $0x40
 622:	c3                   	ret

00000623 <getpid>:
SYSCALL(getpid)
 623:	b8 0b 00 00 00       	mov    $0xb,%eax
 628:	cd 40                	int    $0x40
 62a:	c3                   	ret

0000062b <sbrk>:
SYSCALL(sbrk)
 62b:	b8 0c 00 00 00       	mov    $0xc,%eax
 630:	cd 40                	int    $0x40
 632:	c3                   	ret

00000633 <sleep>:
SYSCALL(sleep)
 633:	b8 0d 00 00 00       	mov    $0xd,%eax
 638:	cd 40                	int    $0x40
 63a:	c3                   	ret

0000063b <uptime>:
SYSCALL(uptime)
 63b:	b8 0e 00 00 00       	mov    $0xe,%eax
 640:	cd 40                	int    $0x40
 642:	c3                   	ret
 643:	66 90                	xchg   %ax,%ax
 645:	66 90                	xchg   %ax,%ax
 647:	66 90                	xchg   %ax,%ax
 649:	66 90                	xchg   %ax,%ax
 64b:	66 90                	xchg   %ax,%ax
 64d:	66 90                	xchg   %ax,%ax
 64f:	90                   	nop

00000650 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 650:	55                   	push   %ebp
 651:	89 e5                	mov    %esp,%ebp
 653:	57                   	push   %edi
 654:	56                   	push   %esi
 655:	53                   	push   %ebx
 656:	89 cb                	mov    %ecx,%ebx
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 658:	89 d1                	mov    %edx,%ecx
{
 65a:	83 ec 3c             	sub    $0x3c,%esp
 65d:	89 45 c0             	mov    %eax,-0x40(%ebp)
  if(sgn && xx < 0){
 660:	85 d2                	test   %edx,%edx
 662:	0f 89 80 00 00 00    	jns    6e8 <printint+0x98>
 668:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 66c:	74 7a                	je     6e8 <printint+0x98>
    x = -xx;
 66e:	f7 d9                	neg    %ecx
    neg = 1;
 670:	b8 01 00 00 00       	mov    $0x1,%eax
  } else {
    x = xx;
  }

  i = 0;
 675:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 678:	31 f6                	xor    %esi,%esi
 67a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 680:	89 c8                	mov    %ecx,%eax
 682:	31 d2                	xor    %edx,%edx
 684:	89 f7                	mov    %esi,%edi
 686:	f7 f3                	div    %ebx
 688:	8d 76 01             	lea    0x1(%esi),%esi
 68b:	0f b6 92 c4 0a 00 00 	movzbl 0xac4(%edx),%edx
 692:	88 54 35 d7          	mov    %dl,-0x29(%ebp,%esi,1)
  }while((x /= base) != 0);
 696:	89 ca                	mov    %ecx,%edx
 698:	89 c1                	mov    %eax,%ecx
 69a:	39 da                	cmp    %ebx,%edx
 69c:	73 e2                	jae    680 <printint+0x30>
  if(neg)
 69e:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 6a1:	85 c0                	test   %eax,%eax
 6a3:	74 07                	je     6ac <printint+0x5c>
    buf[i++] = '-';
 6a5:	c6 44 35 d8 2d       	movb   $0x2d,-0x28(%ebp,%esi,1)

  while(--i >= 0)
 6aa:	89 f7                	mov    %esi,%edi
 6ac:	8d 5d d8             	lea    -0x28(%ebp),%ebx
 6af:	8b 75 c0             	mov    -0x40(%ebp),%esi
 6b2:	01 df                	add    %ebx,%edi
 6b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    putc(fd, buf[i]);
 6b8:	0f b6 07             	movzbl (%edi),%eax
  write(fd, &c, 1);
 6bb:	83 ec 04             	sub    $0x4,%esp
 6be:	88 45 d7             	mov    %al,-0x29(%ebp)
 6c1:	8d 45 d7             	lea    -0x29(%ebp),%eax
 6c4:	6a 01                	push   $0x1
 6c6:	50                   	push   %eax
 6c7:	56                   	push   %esi
 6c8:	e8 f6 fe ff ff       	call   5c3 <write>
  while(--i >= 0)
 6cd:	89 f8                	mov    %edi,%eax
 6cf:	83 c4 10             	add    $0x10,%esp
 6d2:	83 ef 01             	sub    $0x1,%edi
 6d5:	39 c3                	cmp    %eax,%ebx
 6d7:	75 df                	jne    6b8 <printint+0x68>
}
 6d9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 6dc:	5b                   	pop    %ebx
 6dd:	5e                   	pop    %esi
 6de:	5f                   	pop    %edi
 6df:	5d                   	pop    %ebp
 6e0:	c3                   	ret
 6e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 6e8:	31 c0                	xor    %eax,%eax
 6ea:	eb 89                	jmp    675 <printint+0x25>
 6ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000006f0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 6f0:	55                   	push   %ebp
 6f1:	89 e5                	mov    %esp,%ebp
 6f3:	57                   	push   %edi
 6f4:	56                   	push   %esi
 6f5:	53                   	push   %ebx
 6f6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 6f9:	8b 75 0c             	mov    0xc(%ebp),%esi
{
 6fc:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i = 0; fmt[i]; i++){
 6ff:	0f b6 1e             	movzbl (%esi),%ebx
 702:	83 c6 01             	add    $0x1,%esi
 705:	84 db                	test   %bl,%bl
 707:	74 67                	je     770 <printf+0x80>
 709:	8d 4d 10             	lea    0x10(%ebp),%ecx
 70c:	31 d2                	xor    %edx,%edx
 70e:	89 4d d0             	mov    %ecx,-0x30(%ebp)
 711:	eb 34                	jmp    747 <printf+0x57>
 713:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 718:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 71b:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
 720:	83 f8 25             	cmp    $0x25,%eax
 723:	74 18                	je     73d <printf+0x4d>
  write(fd, &c, 1);
 725:	83 ec 04             	sub    $0x4,%esp
 728:	8d 45 e7             	lea    -0x19(%ebp),%eax
 72b:	88 5d e7             	mov    %bl,-0x19(%ebp)
 72e:	6a 01                	push   $0x1
 730:	50                   	push   %eax
 731:	57                   	push   %edi
 732:	e8 8c fe ff ff       	call   5c3 <write>
 737:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
 73a:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 73d:	0f b6 1e             	movzbl (%esi),%ebx
 740:	83 c6 01             	add    $0x1,%esi
 743:	84 db                	test   %bl,%bl
 745:	74 29                	je     770 <printf+0x80>
    c = fmt[i] & 0xff;
 747:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 74a:	85 d2                	test   %edx,%edx
 74c:	74 ca                	je     718 <printf+0x28>
      }
    } else if(state == '%'){
 74e:	83 fa 25             	cmp    $0x25,%edx
 751:	75 ea                	jne    73d <printf+0x4d>
      if(c == 'd'){
 753:	83 f8 25             	cmp    $0x25,%eax
 756:	0f 84 04 01 00 00    	je     860 <printf+0x170>
 75c:	83 e8 63             	sub    $0x63,%eax
 75f:	83 f8 15             	cmp    $0x15,%eax
 762:	77 1c                	ja     780 <printf+0x90>
 764:	ff 24 85 6c 0a 00 00 	jmp    *0xa6c(,%eax,4)
 76b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 770:	8d 65 f4             	lea    -0xc(%ebp),%esp
 773:	5b                   	pop    %ebx
 774:	5e                   	pop    %esi
 775:	5f                   	pop    %edi
 776:	5d                   	pop    %ebp
 777:	c3                   	ret
 778:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 77f:	00 
  write(fd, &c, 1);
 780:	83 ec 04             	sub    $0x4,%esp
 783:	8d 55 e7             	lea    -0x19(%ebp),%edx
 786:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 78a:	6a 01                	push   $0x1
 78c:	52                   	push   %edx
 78d:	89 55 d4             	mov    %edx,-0x2c(%ebp)
 790:	57                   	push   %edi
 791:	e8 2d fe ff ff       	call   5c3 <write>
 796:	83 c4 0c             	add    $0xc,%esp
 799:	88 5d e7             	mov    %bl,-0x19(%ebp)
 79c:	6a 01                	push   $0x1
 79e:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 7a1:	52                   	push   %edx
 7a2:	57                   	push   %edi
 7a3:	e8 1b fe ff ff       	call   5c3 <write>
        putc(fd, c);
 7a8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 7ab:	31 d2                	xor    %edx,%edx
 7ad:	eb 8e                	jmp    73d <printf+0x4d>
 7af:	90                   	nop
        printint(fd, *ap, 16, 0);
 7b0:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 7b3:	83 ec 0c             	sub    $0xc,%esp
 7b6:	b9 10 00 00 00       	mov    $0x10,%ecx
 7bb:	8b 13                	mov    (%ebx),%edx
 7bd:	6a 00                	push   $0x0
 7bf:	89 f8                	mov    %edi,%eax
        ap++;
 7c1:	83 c3 04             	add    $0x4,%ebx
        printint(fd, *ap, 16, 0);
 7c4:	e8 87 fe ff ff       	call   650 <printint>
        ap++;
 7c9:	89 5d d0             	mov    %ebx,-0x30(%ebp)
 7cc:	83 c4 10             	add    $0x10,%esp
      state = 0;
 7cf:	31 d2                	xor    %edx,%edx
 7d1:	e9 67 ff ff ff       	jmp    73d <printf+0x4d>
        s = (char*)*ap;
 7d6:	8b 45 d0             	mov    -0x30(%ebp),%eax
 7d9:	8b 18                	mov    (%eax),%ebx
        ap++;
 7db:	83 c0 04             	add    $0x4,%eax
 7de:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 7e1:	85 db                	test   %ebx,%ebx
 7e3:	0f 84 87 00 00 00    	je     870 <printf+0x180>
        while(*s != 0){
 7e9:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
 7ec:	31 d2                	xor    %edx,%edx
        while(*s != 0){
 7ee:	84 c0                	test   %al,%al
 7f0:	0f 84 47 ff ff ff    	je     73d <printf+0x4d>
 7f6:	8d 55 e7             	lea    -0x19(%ebp),%edx
 7f9:	89 75 d4             	mov    %esi,-0x2c(%ebp)
 7fc:	89 de                	mov    %ebx,%esi
 7fe:	89 d3                	mov    %edx,%ebx
  write(fd, &c, 1);
 800:	83 ec 04             	sub    $0x4,%esp
 803:	88 45 e7             	mov    %al,-0x19(%ebp)
          s++;
 806:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
 809:	6a 01                	push   $0x1
 80b:	53                   	push   %ebx
 80c:	57                   	push   %edi
 80d:	e8 b1 fd ff ff       	call   5c3 <write>
        while(*s != 0){
 812:	0f b6 06             	movzbl (%esi),%eax
 815:	83 c4 10             	add    $0x10,%esp
 818:	84 c0                	test   %al,%al
 81a:	75 e4                	jne    800 <printf+0x110>
      state = 0;
 81c:	8b 75 d4             	mov    -0x2c(%ebp),%esi
 81f:	31 d2                	xor    %edx,%edx
 821:	e9 17 ff ff ff       	jmp    73d <printf+0x4d>
        printint(fd, *ap, 10, 1);
 826:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 829:	83 ec 0c             	sub    $0xc,%esp
 82c:	b9 0a 00 00 00       	mov    $0xa,%ecx
 831:	8b 13                	mov    (%ebx),%edx
 833:	6a 01                	push   $0x1
 835:	eb 88                	jmp    7bf <printf+0xcf>
        putc(fd, *ap);
 837:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
 83a:	83 ec 04             	sub    $0x4,%esp
 83d:	8d 55 e7             	lea    -0x19(%ebp),%edx
        putc(fd, *ap);
 840:	8b 03                	mov    (%ebx),%eax
        ap++;
 842:	83 c3 04             	add    $0x4,%ebx
        putc(fd, *ap);
 845:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 848:	6a 01                	push   $0x1
 84a:	52                   	push   %edx
 84b:	57                   	push   %edi
 84c:	e8 72 fd ff ff       	call   5c3 <write>
        ap++;
 851:	89 5d d0             	mov    %ebx,-0x30(%ebp)
 854:	83 c4 10             	add    $0x10,%esp
      state = 0;
 857:	31 d2                	xor    %edx,%edx
 859:	e9 df fe ff ff       	jmp    73d <printf+0x4d>
 85e:	66 90                	xchg   %ax,%ax
  write(fd, &c, 1);
 860:	83 ec 04             	sub    $0x4,%esp
 863:	88 5d e7             	mov    %bl,-0x19(%ebp)
 866:	8d 55 e7             	lea    -0x19(%ebp),%edx
 869:	6a 01                	push   $0x1
 86b:	e9 31 ff ff ff       	jmp    7a1 <printf+0xb1>
 870:	b8 28 00 00 00       	mov    $0x28,%eax
          s = "(null)";
 875:	bb 34 0a 00 00       	mov    $0xa34,%ebx
 87a:	e9 77 ff ff ff       	jmp    7f6 <printf+0x106>
 87f:	90                   	nop

00000880 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 880:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 881:	a1 30 0e 00 00       	mov    0xe30,%eax
{
 886:	89 e5                	mov    %esp,%ebp
 888:	57                   	push   %edi
 889:	56                   	push   %esi
 88a:	53                   	push   %ebx
 88b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 88e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 891:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 898:	8b 10                	mov    (%eax),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 89a:	39 c8                	cmp    %ecx,%eax
 89c:	73 32                	jae    8d0 <free+0x50>
 89e:	39 d1                	cmp    %edx,%ecx
 8a0:	72 04                	jb     8a6 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8a2:	39 d0                	cmp    %edx,%eax
 8a4:	72 32                	jb     8d8 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
 8a6:	8b 73 fc             	mov    -0x4(%ebx),%esi
 8a9:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 8ac:	39 fa                	cmp    %edi,%edx
 8ae:	74 30                	je     8e0 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 8b0:	89 53 f8             	mov    %edx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 8b3:	8b 50 04             	mov    0x4(%eax),%edx
 8b6:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 8b9:	39 f1                	cmp    %esi,%ecx
 8bb:	74 3a                	je     8f7 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 8bd:	89 08                	mov    %ecx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
 8bf:	5b                   	pop    %ebx
  freep = p;
 8c0:	a3 30 0e 00 00       	mov    %eax,0xe30
}
 8c5:	5e                   	pop    %esi
 8c6:	5f                   	pop    %edi
 8c7:	5d                   	pop    %ebp
 8c8:	c3                   	ret
 8c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8d0:	39 d0                	cmp    %edx,%eax
 8d2:	72 04                	jb     8d8 <free+0x58>
 8d4:	39 d1                	cmp    %edx,%ecx
 8d6:	72 ce                	jb     8a6 <free+0x26>
{
 8d8:	89 d0                	mov    %edx,%eax
 8da:	eb bc                	jmp    898 <free+0x18>
 8dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
 8e0:	03 72 04             	add    0x4(%edx),%esi
 8e3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 8e6:	8b 10                	mov    (%eax),%edx
 8e8:	8b 12                	mov    (%edx),%edx
 8ea:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 8ed:	8b 50 04             	mov    0x4(%eax),%edx
 8f0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 8f3:	39 f1                	cmp    %esi,%ecx
 8f5:	75 c6                	jne    8bd <free+0x3d>
    p->s.size += bp->s.size;
 8f7:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
 8fa:	a3 30 0e 00 00       	mov    %eax,0xe30
    p->s.size += bp->s.size;
 8ff:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 902:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 905:	89 08                	mov    %ecx,(%eax)
}
 907:	5b                   	pop    %ebx
 908:	5e                   	pop    %esi
 909:	5f                   	pop    %edi
 90a:	5d                   	pop    %ebp
 90b:	c3                   	ret
 90c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000910 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 910:	55                   	push   %ebp
 911:	89 e5                	mov    %esp,%ebp
 913:	57                   	push   %edi
 914:	56                   	push   %esi
 915:	53                   	push   %ebx
 916:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 919:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 91c:	8b 15 30 0e 00 00    	mov    0xe30,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 922:	8d 78 07             	lea    0x7(%eax),%edi
 925:	c1 ef 03             	shr    $0x3,%edi
 928:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 92b:	85 d2                	test   %edx,%edx
 92d:	0f 84 8d 00 00 00    	je     9c0 <malloc+0xb0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 933:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 935:	8b 48 04             	mov    0x4(%eax),%ecx
 938:	39 f9                	cmp    %edi,%ecx
 93a:	73 64                	jae    9a0 <malloc+0x90>
  if(nu < 4096)
 93c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 941:	39 df                	cmp    %ebx,%edi
 943:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 946:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 94d:	eb 0a                	jmp    959 <malloc+0x49>
 94f:	90                   	nop
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 950:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 952:	8b 48 04             	mov    0x4(%eax),%ecx
 955:	39 f9                	cmp    %edi,%ecx
 957:	73 47                	jae    9a0 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 959:	89 c2                	mov    %eax,%edx
 95b:	3b 05 30 0e 00 00    	cmp    0xe30,%eax
 961:	75 ed                	jne    950 <malloc+0x40>
  p = sbrk(nu * sizeof(Header));
 963:	83 ec 0c             	sub    $0xc,%esp
 966:	56                   	push   %esi
 967:	e8 bf fc ff ff       	call   62b <sbrk>
  if(p == (char*)-1)
 96c:	83 c4 10             	add    $0x10,%esp
 96f:	83 f8 ff             	cmp    $0xffffffff,%eax
 972:	74 1c                	je     990 <malloc+0x80>
  hp->s.size = nu;
 974:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 977:	83 ec 0c             	sub    $0xc,%esp
 97a:	83 c0 08             	add    $0x8,%eax
 97d:	50                   	push   %eax
 97e:	e8 fd fe ff ff       	call   880 <free>
  return freep;
 983:	8b 15 30 0e 00 00    	mov    0xe30,%edx
      if((p = morecore(nunits)) == 0)
 989:	83 c4 10             	add    $0x10,%esp
 98c:	85 d2                	test   %edx,%edx
 98e:	75 c0                	jne    950 <malloc+0x40>
        return 0;
  }
}
 990:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 993:	31 c0                	xor    %eax,%eax
}
 995:	5b                   	pop    %ebx
 996:	5e                   	pop    %esi
 997:	5f                   	pop    %edi
 998:	5d                   	pop    %ebp
 999:	c3                   	ret
 99a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 9a0:	39 cf                	cmp    %ecx,%edi
 9a2:	74 4c                	je     9f0 <malloc+0xe0>
        p->s.size -= nunits;
 9a4:	29 f9                	sub    %edi,%ecx
 9a6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 9a9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 9ac:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 9af:	89 15 30 0e 00 00    	mov    %edx,0xe30
}
 9b5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 9b8:	83 c0 08             	add    $0x8,%eax
}
 9bb:	5b                   	pop    %ebx
 9bc:	5e                   	pop    %esi
 9bd:	5f                   	pop    %edi
 9be:	5d                   	pop    %ebp
 9bf:	c3                   	ret
    base.s.ptr = freep = prevp = &base;
 9c0:	c7 05 30 0e 00 00 34 	movl   $0xe34,0xe30
 9c7:	0e 00 00 
    base.s.size = 0;
 9ca:	b8 34 0e 00 00       	mov    $0xe34,%eax
    base.s.ptr = freep = prevp = &base;
 9cf:	c7 05 34 0e 00 00 34 	movl   $0xe34,0xe34
 9d6:	0e 00 00 
    base.s.size = 0;
 9d9:	c7 05 38 0e 00 00 00 	movl   $0x0,0xe38
 9e0:	00 00 00 
    if(p->s.size >= nunits){
 9e3:	e9 54 ff ff ff       	jmp    93c <malloc+0x2c>
 9e8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 9ef:	00 
        prevp->s.ptr = p->s.ptr;
 9f0:	8b 08                	mov    (%eax),%ecx
 9f2:	89 0a                	mov    %ecx,(%edx)
 9f4:	eb b9                	jmp    9af <malloc+0x9f>
