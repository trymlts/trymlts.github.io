sig typing.
accum_sig spy, control, lists.
accum_sig eval, errors.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Typing of miniFP programs. (Figure 10.3)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
kind ty                type.
type int, bool         ty.
type lst               ty -> ty.        % Lists
type prty              ty -> ty -> ty.  % Pairs
type arr               ty -> ty -> ty.  % Functional arrow type
type utm               ty.              % untyped lambda terms

type typeof            tm -> ty -> prop.  % Top-level predicate

type typematch         ty -> list rulex -> ty -> prop.
type typematchrulex     ty -> rulex      -> ty -> prop.
