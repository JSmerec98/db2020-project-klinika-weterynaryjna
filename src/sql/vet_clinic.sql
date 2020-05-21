-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 21 Maj 2020, 19:14
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `vet_clinic`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `animal`
--

CREATE TABLE `animal` (
  `animal_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sex` varchar(50) NOT NULL,
  `birth_date` date NOT NULL,
  `species` varchar(50) NOT NULL,
  `breed` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL,
  `fur` varchar(50) DEFAULT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `animal_appointment`
--

CREATE TABLE `animal_appointment` (
  `animal_id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `animal_diagnosis`
--

CREATE TABLE `animal_diagnosis` (
  `animal_diagnosis_id` int(11) NOT NULL,
  `regimen` varchar(255) DEFAULT NULL,
  `appointment_id` int(11) NOT NULL,
  `diagnosis_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `appointment`
--

CREATE TABLE `appointment` (
  `appointment_id` int(11) NOT NULL,
  `data` date NOT NULL,
  `time` time NOT NULL,
  `veterinarian_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `diagnosis`
--

CREATE TABLE `diagnosis` (
  `diagnosis_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `diagnosis`
--

INSERT INTO `diagnosis` (`diagnosis_id`, `name`, `description`) VALUES
(1, 'Nosówka - Febris catarrhalis et nervosa canum', 'Wysoce zakaźna, wirusowa choroba psowatych, z komplikacjami w postaci wtórnych zakażeń bakteryjnych. Występuje powszechnie na całym świecie. Należy, wraz z parwowirozą, do najgroźniejszych chorób zakaźnych psów. Zachorowanie może nastąpić u psów w każdym wieku, najczęściej występuje u szczeniąt w wieku 2–5 miesięcy. Cechuje się wysoką śmiertelnością i ciężkim przebiegiem.'),
(2, 'Parwowiroza psów', 'Zakaźna, zaraźliwa choroba atakująca głównie psy młode, do szóstego miesiąca życia. Niekiedy może również dotyczyć psów dorosłych, w szczególności niezaszczepionych. Coraz częściej weterynarze zalecają ozonowanie jako skuteczną metodę dezynfekcji w przypadkach eliminacji wirusów parwowirozy i panleukopenii.'),
(3, 'Wścieklizna - Rabies', 'Niebezpieczna wirusowa choroba zakaźna zwierząt (niektórych ssaków), mogąca przenieść się na człowieka (antropozoonoza). Główną przyczyną śmierci jest niewydolność oddechowa. Wścieklizna jest chorobą wywoływaną przez ssRNA(-) wirusa Rabies virus (RABV) z rodziny Rhabdoviridae, rodzaju Lyssavirus.'),
(4, 'Albinizm', 'Brak pigmentu w skórze, tworach skórnych, włosach i tęczówce oka. Osobnik posiadający tę cechę nosi miano albinosa. Albinizm wywołany jest przez brak enzymu tyrozynazy przekształcającego prekursor melaniny w barwnik melaninę. Warunkuje go allel recesywny. Prócz albinizmu właściwego występuje także albinizm lokalny. U niektórych gatunków zwierząt (króliki, tchórze, szczury, myszy, papugi) stał się cechą charakterystyczną dla niektórych odmian.'),
(5, 'Toksoplazmoza - Toxoplasmosis', ' Pasożytnicza choroba ludzi i zwierząt spowodowana zarażeniem pierwotniakiem Toxoplasma gondii. Żywicielem ostatecznym są koty domowe i niektóre kotowate. Żywicielem pośrednim zaś wszystkie ssaki łącznie z człowiekiem oraz ptaki. Zakażenie toksoplazmozą to jedno z najczęstszych zakażeń pasożytniczych. Toksoplazmoza występuje praktycznie na całym świecie. Mimo wysokiego odsetka zakażonych, niewielka liczba osób choruje. Reszta to nosiciele.'),
(6, 'Dychawica świszcząca', 'Przewlekłe schorzenie, porażenie końcowej gałązki nerwu krtaniowego wstecznego. Choroba zwierząt domowych (koni i bydła). Polega na bezgorączkowym utrudnionym oddychaniu. O dychawicy mówimy, gdy temperatura ciała nie przekracza normalnej, tj. 38,5 °C, a liczba oddechów w stanie odpoczynku jest większa od 14 na minutę u koni, a 20 na minutę u bydła. Przyczyną dychawicy są choroby dróg oddechowych i serca. Leczenie zależne jest od zmian patologicznych, cięższe wypadki są nieuleczalne.'),
(7, 'Gruda', 'Często spotykana infekcja skóry u koni. Najbardziej narażone miejsca to pęciny, piętki oraz ostrogi, rzadziej można spotkać grudę na podbrzuszu lub górnych partiach kończyn. Konie o białych nogach, delikatnej skórze lub konie pociągowe z długimi szczotami na pęcinach są najbardziej podatne na grudę. Grudę wywołuje bakteria (Dermatophilus congolensis), która często występuje na zabłoconych i mokrych padokach, gdzie trzymane są konie.'),
(8, 'Sarkoidoza', 'Miejscowo złośliwa forma nowotworu występująca u koniowatych. Objawia się występowaniem guzów zwanych sarkoidami na skórze konia. Choroba nie atakuje organów wewnętrznych. Sarkoidoza jest najczęściej jedynie problemem kosmetycznym, nie przeszkadza w życiu konia i nie jest zakaźna. Istnieją jednak przypadki, kiedy może nastąpić owrzodzenie lub pęknięcie sarkoida i może dojść do zakażenia.'),
(9, 'Zołzy - Adenitis equorum', 'Ostra, zakaźna i zaraźliwa choroba koni. Powoduje zapalenia dróg oddechowych i ropienie żuchwowych węzłów chłonnych. Choroba występuje na całym świecie, najczęściej dotyczy źrebiąt. Może również wystąpić u koni dorosłych, które nie chorowały w młodości.'),
(10, 'Tężec - Tetanus', 'Ostra i ciężka choroba przyranna zwierząt oraz ludzi. Jest on chorobą zakaźną (wywoływana przez bakteryjny czynnik zakaźny), ale nie zaraźliwą, ponieważ jej przyczyną są egzotoksyny (o charakterze neurotoksyn) wytwarzane przez bakterię laseczkę tężca (Clostridium tetani). Zwierzęciem najczęściej zapadającym na tężec jest koń, który jest też naturalnym nosicielem tejże choroby. Inne zwierzęta, jak choćby psy, koty, bydło i świnie są mniej wrażliwe. Natomiast ptaki są odporne.'),
(11, 'Pryszczyca - Aphtae epizooticae', 'Ostra, bardzo zaraźliwa wirusowa choroba zwierząt racicowych hodowlanych i dzikich. Zwana także zarazą pyska i racic. Obecnie uważana za najgroźniejszą chorobę zwierząt. Na zakażenie tą chorobą wrażliwe są bydło, trzoda chlewna, owce, kozy, bawoły, renifery, wielbłądy, dziki oraz przeżuwacze dziko żyjące.'),
(12, 'Choroby ryb akwariowych', 'Zespół chorób stanowiących duży problem szczególnie dla początkujących akwarystów. Ich powstawanie jest zwykle skutkiem zaniedbań - niewłaściwą temperaturą, składem chemicznym wody, nieodpowiednim pokarmem lub przerybieniem. Osłabione ryby stają się łatwiejszym łupem dla bakterii, wirusów, grzybów, czy pasożytów. Częstą przyczyną zachorowań jest także wprowadzenie do akwarium z zewnątrz chorych ryb i roślin, lub zakażonych nosicieli chorób.'),
(13, 'Zapalenie jelit', 'Zapalenie jelit, którego głównym objawem jest biegunka to jedna z najczęściej spotykanych przypadłości czworonogów. Może ją wywołać bardzo wiele czynników – od infekcji bakteryjnych i pasożytów po zatrucia pokarmowe.'),
(14, 'Zapalenie uszu', 'Zapalenie uszu to bardzo często spotykana choroba psów, w szczególności posiadających zwisające uszy. Wilgotne i ciepłe środowisko sprzyja rozwojowi patogenów odpowiadających za zapalenie przewodu słuchowego. Choroba objawia się świądem uszu – pies się drapie, potrząsa głową, mogą wystąpić: obfita wydzielina i nieprzyjemny zapach. Nieleczone zapalenie uszu może doprowadzić nawet do utraty słuchu.'),
(15, 'Dysplazja stawu biodrowego', 'To choroba typowa dla psów dużych ras. Jest to zwyrodnienie stawu biodrowego, wywołane czynnikiem genetycznym, a także zbytnim obciążeniem stawów, szczególnie w okresie szczenięcym. Pies dotknięty tym schorzeniem jest niechętny do zabawy, zmienia swój sposób poruszania – kołysze się w trakcie chodzenia, siada na udzie lub podwiniętym ogonie, wykazuje objawy bólowe w czasie aktywności.'),
(16, 'Ciąża urojona', 'Ciąża urojona występuje u niekastrowanych suk. Daje symptomy typowe dla prawdziwej ciąży – suka buduje gniazdo, powiększa się jej brzuch i sutki, może dojść do wystąpienia laktacji. Pies zaczyna znosić do gniazda zabawki, wobec których wykazuje matczyny instynkt. Ten stan trwa przez około miesiąc, później może minąć samoistnie. Jeśli pojawiła się laktacja, udaj się do lekarza weterynarii, gdyż grozi ona w przypadku braku faktycznej ciąży wytworzeniem się stanu zapalnego.'),
(17, 'Skręt żołądka', 'Skręt żołądka to bardzo poważna choroba, dotykająca głównie   duże psy, ważące powyżej 20kg, choć może się przydarzyć także mniejszym . Charakterystycznym objawem skrętu żołądka jest napięty i powiększony brzuch. Pies jest osowiały, ma odruchy wymiotne, jednak nie zwraca żadnej treści. Występuje również ślinotok, psu wyraźnie ciężko się oddycha.'),
(18, 'Zapalenie spojówek', 'Zapalenie spojówek częstokroć jest wywołane przez alergię lub infekcję bakteryjną. Objawy to łzawienie oka, zaczerwienienie i obrzęk. Niezmiernie często, szczególnie w okresie letnim, zapalenie spojówek jest efektem podrażnienia, a to z kolei spowodowane jest tym, że zwierzę buszuje w wysokich trawach i krzakach – zdarza się, że do oka (pod trzecią powiekę) przedostaje się ciało obce'),
(19, 'Borelioza', 'Borelioza to przewlekła, bakteryjna choroba odkleszczowa. Jej objawy występują średnio po 2 do 5 miesięcy po ukąszeniu, ale jedynie u 5% psów. Po ukąszeniu kleszcza – nosiciela boreliozy, u psów pojawia się wędrujący rumień, jednak niełatwo go zauważyć ze względu na gęstą sierść. Pies chory na boreliozę staje się osowiały, ma wysoką gorączkę, nie ma apetytu ani ochoty na zabawę – utrudnia to diagnozę, ponieważ te objawy towarzyszą wielu innym chorobom.'),
(20, 'Psittacosis', 'Psittacosis jest formą bakterii Chlamydia, która może wpływać na wszystkie haczyki. Choroba ta jest wysoce zakaźna i może być przenoszona z ptaków na inne zwierzęta, a także ludzi. Objawy Psittacosis obejmują trudności w oddychaniu, zakażenia oczu i stan zapalny, a także luźne, wodniste odchody i ogólny letarg. Leczenie to najczęściej antybiotyk.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `drug`
--

CREATE TABLE `drug` (
  `drug_id` int(11) NOT NULL,
  `drug_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `drug_plan`
--

CREATE TABLE `drug_plan` (
  `drug_plan_id` int(11) NOT NULL,
  `diagnosis_id` int(11) NOT NULL,
  `advices` varchar(255) DEFAULT NULL,
  `drug_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `owner`
--

CREATE TABLE `owner` (
  `owner_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone_number` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `owner`
--

INSERT INTO `owner` (`owner_id`, `first_name`, `last_name`, `address`, `phone_number`) VALUES
(1, 'Adam', 'Piątkowski', 'ul. Górska 31, Kraków 30-628', 697466370),
(2, 'Maria', 'Guzik', 'ul. Ku Raciborowicom 136, Kraków 31-762', 787028564),
(3, 'Kamil', 'Kaszubowski', 'ul. Krasickiego Ignacego 86, Kraków 30-503', 526846813),
(4, 'Jadwiga', 'Matuszak', 'ul. Falowa 134, Kraków 30-413', 124524346),
(5, 'Aleksandra', 'Sarzyński', 'ul. Konopnickiej Marii 124, Kraków 30-628', 452345813),
(6, 'Joanna', 'Bryl', 'ul. Oboźna 2, Kraków 30-011', 526174813),
(7, 'Wiktor', 'Laszczak', 'ul. Górska 31, Kraków 30-345', 724846813),
(8, 'Dawid', 'Toporek', 'ul. Soczyny 141, Kraków 31-754', 174856813),
(9, 'Agata', 'Lasota', 'ul. Brzeska 57, Kraków 30-343', 326846133),
(10, 'Zofia', 'Noworycka', 'ul. Małego Księcia 1, Kraków 30-535', 537583813),
(11, 'Bartosz', 'Łojko', 'ul. Falowa 12, Kraków 30-363', 584265793),
(12, 'Weronika', 'Tryba', 'ul. Grzegórzecka 73, Kraków 30-245', 742158965),
(13, 'Jan', 'Zarębski', 'ul. Oboźna 254, Kraków 30-011', 785236541),
(14, 'Łukasz', 'Rudy', 'ul. Górska 312, Kraków 30-345', 986532147),
(15, 'Ignacy', 'Zieliński', 'ul. Grzegórzecka 64, Kraków 30-245', 885422176),
(16, 'Kinga', 'Żakowski', 'ul. Brzeska 57, Kraków 30-343', 554762185),
(17, 'Laura', 'Sekuła', 'ul. Raciborska 90, Kraków 30-123', 457216985),
(18, 'Wiktoria', 'Menetel', 'ul. Raciborska 23, Kraków 30-123', 223569871),
(19, 'Barbara', 'Warszawska', 'Al. Konarowa 3, Kraków 30-005', 145587469),
(20, 'Alojzy', 'Tkaczyk', 'Al. Konarowa 36, Kraków 30-005', 458723654);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prescription`
--

CREATE TABLE `prescription` (
  `perscription_id` int(11) NOT NULL,
  `veterinarian_id` int(11) NOT NULL,
  `drug_plan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `veterinarian`
--

CREATE TABLE `veterinarian` (
  `veterinarian_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone_number` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `veterinarian`
--

INSERT INTO `veterinarian` (`veterinarian_id`, `first_name`, `last_name`, `address`, `phone_number`) VALUES
(1, 'Kordian', 'Kowalski', 'Al. Wędrowników 23, Kraków 30-248', 451236987),
(2, 'Marcin', 'Głowacki', 'ul. Balicka 77, Kraków 30-198', 745216589),
(3, 'Elżbieta', 'Zawadzka', 'ul. Bukietowa 24, Kraków 31-234', 745215896),
(4, 'WIktoria', 'Zabielska', 'Al. Wędrowników 23, Kraków 30-248', 125635874),
(5, 'Krzysztof', 'Pajda', 'ul. Balicka 1, Kraków 30-198', 326589745),
(6, 'Ewa', 'Olkowska', 'ul. Przemiarki 82, Kraków 30-384', 523698741);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`animal_id`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Indeksy dla tabeli `animal_appointment`
--
ALTER TABLE `animal_appointment`
  ADD KEY `animal_id` (`animal_id`),
  ADD KEY `appointment_id` (`appointment_id`);

--
-- Indeksy dla tabeli `animal_diagnosis`
--
ALTER TABLE `animal_diagnosis`
  ADD PRIMARY KEY (`animal_diagnosis_id`),
  ADD KEY `appointment_id` (`appointment_id`),
  ADD KEY `diagnosis_id` (`diagnosis_id`);

--
-- Indeksy dla tabeli `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointment_id`),
  ADD KEY `veterinarian_id` (`veterinarian_id`);

--
-- Indeksy dla tabeli `diagnosis`
--
ALTER TABLE `diagnosis`
  ADD PRIMARY KEY (`diagnosis_id`);

--
-- Indeksy dla tabeli `drug`
--
ALTER TABLE `drug`
  ADD PRIMARY KEY (`drug_id`);

--
-- Indeksy dla tabeli `drug_plan`
--
ALTER TABLE `drug_plan`
  ADD PRIMARY KEY (`drug_plan_id`),
  ADD KEY `diagnosis_id` (`diagnosis_id`),
  ADD KEY `drug_id` (`drug_id`);

--
-- Indeksy dla tabeli `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`owner_id`);

--
-- Indeksy dla tabeli `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`perscription_id`),
  ADD KEY `veterinarian_id` (`veterinarian_id`),
  ADD KEY `drug_plan_id` (`drug_plan_id`);

--
-- Indeksy dla tabeli `veterinarian`
--
ALTER TABLE `veterinarian`
  ADD PRIMARY KEY (`veterinarian_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `animal`
--
ALTER TABLE `animal`
  MODIFY `animal_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `animal_diagnosis`
--
ALTER TABLE `animal_diagnosis`
  MODIFY `animal_diagnosis_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `diagnosis`
--
ALTER TABLE `diagnosis`
  MODIFY `diagnosis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT dla tabeli `owner`
--
ALTER TABLE `owner`
  MODIFY `owner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `animal_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `owner` (`owner_id`);

--
-- Ograniczenia dla tabeli `animal_appointment`
--
ALTER TABLE `animal_appointment`
  ADD CONSTRAINT `animal_appointment_ibfk_1` FOREIGN KEY (`animal_id`) REFERENCES `animal` (`animal_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `animal_appointment_ibfk_2` FOREIGN KEY (`appointment_id`) REFERENCES `appointment` (`appointment_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `animal_diagnosis`
--
ALTER TABLE `animal_diagnosis`
  ADD CONSTRAINT `animal_diagnosis_ibfk_1` FOREIGN KEY (`appointment_id`) REFERENCES `appointment` (`appointment_id`),
  ADD CONSTRAINT `animal_diagnosis_ibfk_2` FOREIGN KEY (`diagnosis_id`) REFERENCES `diagnosis` (`diagnosis_id`);

--
-- Ograniczenia dla tabeli `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`veterinarian_id`) REFERENCES `veterinarian` (`veterinarian_id`);

--
-- Ograniczenia dla tabeli `drug_plan`
--
ALTER TABLE `drug_plan`
  ADD CONSTRAINT `drug_plan_ibfk_1` FOREIGN KEY (`diagnosis_id`) REFERENCES `diagnosis` (`diagnosis_id`),
  ADD CONSTRAINT `drug_plan_ibfk_2` FOREIGN KEY (`drug_id`) REFERENCES `drug` (`drug_id`);

--
-- Ograniczenia dla tabeli `prescription`
--
ALTER TABLE `prescription`
  ADD CONSTRAINT `prescription_ibfk_1` FOREIGN KEY (`veterinarian_id`) REFERENCES `veterinarian` (`veterinarian_id`),
  ADD CONSTRAINT `prescription_ibfk_2` FOREIGN KEY (`drug_plan_id`) REFERENCES `drug_plan` (`drug_plan_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
