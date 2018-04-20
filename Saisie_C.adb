
SUBTYPE Mot14 IS String (1..14);

 --Saisie controle des activites
PROCEDURE Saisie_activite (
         activite :    OUT T_Contrat ) IS
      S : Mot14;
      K : Integer;
   BEGIN
      LOOP
         BEGIN
            Get_Line(S, K);
            act := declaration_adherent.T_Contrat'Value(S(1..K));
            EXIT;
         EXCEPTION
            WHEN Constraint_Error =>
               Put("Erreur de saisie, veuillez recommencer : ");
         END;
      END LOOP;
   END Saisie_activite;