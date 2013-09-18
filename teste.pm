#!/usr/bin/perl -w

print"p cnf 729 porra\n";

our $cont = 1;

#criando matriz com numeros de 1 a 729
for (my $i = 0; $i < 9; $i++) 
{
  for(my $j = 0; $j< 9; $j++)
  {
    for(my $k = 0; $k < 9; $k++)
    {
      $matriz[$i][$j][$k] = ($i+1)*100+($j+1)*10+$k+1; 
    }
  }
}


$i = 0;            #percorrera as casas
$j = 0;            #estrela do show
$l = 1;            #índice da linha central do grid
$k = 1;            #indice da coluna central do grid
$m = 0;						 #valor do campo
my $linp;          #indice da linha percorrida
my $colp;          #indice da coluna percorrida
my $line;          #indice da linha estrela do show
my $cole;          #indice da coluna estrela do show


for($m = 0; $m < 9; $m++)
{
	for($l = 1; $l < 9; $l += 3)
	{
		for($k = 1; $k < 9; $k += 3)
		{
			for($j = 0; $j < 9; $j++)
			{
				for($i = 0; $i < 9; $i++)
				{
					$linp = $l + int($i/3 - 1);
					$colp = $k + ($i%3 - 1);
					$line = $l + int($j/3 - 1);
					$cole = $k + ($j%3 - 1);
					print "-$matriz[$line][$cole][$m] -$matriz[$linp][$colp][$m] 0\n" unless ($linp == $line and $colp == $cole);
				}
			}
		}
	}
}

