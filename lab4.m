s = '������� ������� 101 521 899';
L0 = s(~isspace(s));
L = length(L0)

sm = regexp(s, ' ', 'split');
s1 = [sm{5} ' ' sm{2} ' ' sm{3} ' ' sm{4} ' ' sm{1}]

s1 = strrep(s1, '0', '���� ');
s1 = strrep(s1, '1', '���� ');
s1 = strrep(s1, '2', '��� ');
s1 = strrep(s1, '3', '��� ');
s1 = strrep(s1, '4', '������ ');
s1 = strrep(s1, '5', '���� ');
s1 = strrep(s1, '6', '����� ');
s1 = strrep(s1, '7', '���� ');
s1 = strrep(s1, '8', '������ ');
s1 = strrep(s1, '9', '������ ');
s1

pros = regexp(s,'[0-9]');
mas = str2num(s(pros)')'

str1 = '������� ������� 101 521 899 \n';
str2 = '10 20 40 50 12 19 21 32 44 \n';
str3 = '-1 -2 -3 -4 32 \n';
str4 = '10 \n';
f = fopen('in9.txt','wt+');
fprintf(f,str1);
fprintf(f,str2);
fprintf(f,str3);
fprintf(f,str4);
fclose(f);

f = fopen('in9.txt','rt+');
str11 = fscanf(f, '%s', [1 4])
str22 = fscanf(f, '%f', [1 5])
str33 = fscanf(f, '%f', [1 5])
str44 = fscanf(f, '%f', [1 5])
fclose(f);

h1=figure;
hold on
x=[1:0.1:5];
for beta=-0.5:0.1:0.5
y=sin(9*x);
plot(x,y)
end
hold off
FileName000=['File1NameExp', '_1.jpg'];
saveas(h1,FileName000);

ff = fopen('in9.html','wt+');
PictHigh1='200';

fprintf(ff,['������� \n']);
fprintf(ff,['<a href="' FileName000 '">']);
fprintf(ff,['<br><img src="' FileName000 '" height="' PictHigh1 '" />' '\n']);
 %fprintf(FileHtml,['<a href="' FileName000 '">']);
fprintf(ff,['</a>\n']);
fprintf(ff,['</body>\n']);
fprintf(ff,['</HTML>\n']);
fclose(ff);