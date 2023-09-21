######Define o nome a ser tratado
$name = "TESTE DA SILVA TESTE"
######Divide o nome a cada " " existente
$name = $name.Split()
######Conta a quantidade de palavras existentes
$count_word = $name.Count
#####Define uma Array para armazenar os nomes
$name_complete = @()
$count = 0
while ($count -lt $count_word) {
    $count_character = $name[$count] | Measure-Object -Character
    $count_character = $count_character.Characters

    $name_s = $name[$count]
    $name_s = $name_s.Substring(1,$count_character-1).ToLower()

    $name_s =  $name[$count].Substring(0,1)+$name_s

$name_complete += $name_s

$count = $count + 1

}
echo $name_complete[0] + " " + $name_complete[1] + " " + $name_complete[2] + " " + $name_complete[3] + " " + $name_complete[4] + " " + $name_complete[5] + " " + $name_complete[6] + " " + $name_complete[7] + " " + $name_complete[8]
