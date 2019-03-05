
#!/bin/bash

menu()
{
x=1
while [ $x != 0 ]
do
echo "****************MENU***************"
echo "             1- Afficher Menu"
echo "             2- Info Mémoire"
echo "             3- Help"
echo "             4- Info Disque"
echo "             5- Version Noyau Linux"
echo "             6- save"
echo "             7- Afficher"
echo "             0- Quitter le Menu"
echo  "entrer votre chois:"
read x
case $x in
1) menu
  ;;
2) lmem
  ;;
3) helps
  ;;
4) lpart
  ;;
5) lkernel
  ;;
6) save
   ;;
7) afficher
  ;;
0)  break
  ;;
esac
done
}

lmem()
{
cd /proc|free -m
} 
helps()
{
help
}
lkernel()
{
 cat /proc/version
}
lpart()
{
 cd /proc|df -h
}
save()
{
lkernel  |cat >> dali.txt
lmem |cat >> dali.txt
lpart |cat >> dali.txt
}
afficher()
{
cat dali.txt
}
