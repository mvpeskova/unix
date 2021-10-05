#!/bin/bash

touch step4.c
truncate -s 0 step4.c

echo '#define _CRT_SECURE_NO_WARNINGS' >> step4.c
echo '#include <stdio.h>' >> step4.c
echo '#include <stdlib.h>' >> step4.c
echo ' ' >> step4.c
echo 'int main()' >> step4.c
echo '{' >> step4.c
echo 'FILE* fw = fopen("step3.sh", "ab+");' >> step4.c
echo 'char kov = 34;' >> step4.c
echo 'char ap = 39;' >> step4.c
echo 'char d = 92;' >> step4.c
echo 'fprintf(fw, "#!/bin/bash\n");' >> step4.c
echo 'system("truncate -s 0 step3.sh");' >> step4.c
echo 'fprintf(fw, "%s%c%s%c%s", "echo ", ap, "#define _CRT_SECURE_NO_WARNINGS", ap, " > step2.c\n");' >> step4.c
echo 'fprintf(fw, "%s%c%s%c%s", "echo ", ap, "#include <stdio.h>", ap, " >> step2.c\n");' >> step4.c
echo 'fprintf(fw, "%s%c%s%c%s", "echo ", ap, " ", ap, " >> step2.c\n");' >> step4.c
echo 'fprintf(fw, "%s%c%s%c%s", "echo ", ap, "int main(){", ap, " >> step2.c\n");' >> step4.c
echo 'fprintf(fw, "%s%c%s%c%s%c%s%c%s%c%s", "echo ", ap, "printf(", kov, "Hello world!", d, "n", kov, ");", ap, " >> step2.c\n");' >> step4.c
echo 'fprintf(fw, "%s%c%s%c%s", "echo ", ap, "}", ap, " >> step2.c\n");' >> step4.c
echo 'fprintf(fw, "chmod 777 step2.c\n");' >> step4.c
echo 'fprintf(fw, "gcc step2.c -o step_2.c\n");' >> step4.c
echo 'fprintf(fw, "chmod 777 step_2.c\n");' >> step4.c
echo 'fprintf(fw, "./step_2.c\n");' >> step4.c
echo 'fclose(fw);' >> step4.c
echo 'system("chmod 777 step3.sh");' >> step4.c
echo 'system("./step3.sh");' >> step4.c
echo '}' >> step4.c
chmod 777 step4.c
gcc step4.c -o step_4.c
chmod 777 step_4.c
./step_4.c

