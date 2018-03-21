% 29 july 2014.
% 21 jan 2018: distinct added

module lists.

type rev list A -> list A -> list A -> prop.

member X [X|_].
member X [Y|R] :- member X R.

append [] K K.
append (X::L) K (X::M) :- append L K M.

foreach P [].
foreach P (X::L) :- P X, foreach P L.

forsome P (X::L) :- P X; forsome P L.

memb_and_rest X (X::L) L.
memb_and_rest X (Y::K) (Y::L) :- memb_and_rest X K L.

reverse L K :- rev L [] K.
rev [] L L.
rev (X::L) K M :- rev L (X::K) M.

foldl P [] X X.
foldl P (Z::L) X Y :- P Z X W, foldl P L W Y.

length [] 0.
length (X::Q) N :- length Q N', N is N' + 1.

distinct [].
distinct [X|L] :- not(member X L), distinct L.

mappred P [] [].
mappred P (X::L) (Y::K) :- P X Y, mappred P L K.
