MORSE_CODE = {
    '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}.freeze

def character_decod(lettre)
    MORSE_CODE[lettre]
end

def singleword_decod(mot)
    nouveau_mot = mot.split(/ /)
    resultat = nouveau_mot.map { |lettr| character_decod(lettr) }
    resultat.join
end

def sentence_decod(phrase)
    sentence = phrase.split(/   /)
    resultat = sentence.map{ |mots| singleword_decod(mots) }
    resultat.join(' ')
end