-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 27 Maj 2020, 13:41
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

--
-- Zrzut danych tabeli `animal`
--

INSERT INTO `animal` (`animal_id`, `name`, `sex`, `birth_date`, `species`, `breed`, `color`, `fur`, `owner_id`) VALUES
(1, 'Reksio', 'Male', '2010-04-12', 'Pies', 'Labrador Retriever', 'Brązowy', 'Jednokolorowe', 1),
(2, 'Burek', 'Male', '2012-02-24', 'Pies', 'Labrador Retriever', 'Kremowy', 'Jednokolorowe', 1),
(3, 'Bambi', 'Female', '2011-02-14', 'Kot', 'Kot Syjamski', 'Beżowo-Czarny', 'Mieszane', 2),
(4, 'Pusia', 'Female', '2011-05-17', 'Pies', 'Husky Syberyjski', 'Szaro-Czarny', 'Mieszane', 3),
(5, 'Baks', 'Male', '2013-06-12', 'Królik', 'Belgijski Olbrzym', 'Szary', 'Jednokolorowe', 3),
(6, 'Puszek', 'Male', '2014-08-06', 'Kot', 'Kot Bengalski', 'Pomarańczowo-Czarny', 'Cętkowane', 3),
(7, 'Bomba', 'Female', '2015-05-22', 'Pies', 'Golden Retriever', 'Ciemnozłoty', 'Jednokolorowe', 4),
(8, 'Barry', 'Male', '2012-05-22', 'Pies', 'Buldog Angielski', 'Brązowy', 'Jednokolorowe', 5),
(9, 'Piorun', 'Male', '2016-10-21', 'Królik', 'Olbrzym Srokacz', 'Czarno-Biały', 'Plamiste', 6),
(10, 'Bąbel', 'Male', '2018-12-21', 'Pies', 'Mieszaniec', 'Bury', 'Jednokolorowe', 7),
(11, 'Leon', 'Male', '2019-02-19', 'Chomik', 'Chomik Syryjski', 'Brązowy', 'Jednokolorowe', 7),
(12, 'Amor', 'Male', '2012-03-21', 'Pies', 'Shiba', 'Biały', 'Jednokolorowe', 8),
(13, 'Grot', 'Male', '2012-07-27', 'Koń', 'Mustang', 'Czarny', 'Jednokolorowe', 9),
(14, 'Buba', 'Female', '2013-10-18', 'Kot', 'Szkocki Zwisłouchy', 'Szary', 'Jednokolorowe', 10),
(15, 'Abba', 'Female', '2015-12-18', 'Kot', 'Himalayan', 'Czarno-Bury', 'Mieszane', 11),
(16, 'Ramzes', 'Male', '2018-08-15', 'Królik', 'Francuski Baran', 'Czarny', 'Jednokolorowe', 11),
(17, 'Tajson', 'Male', '2013-07-08', 'Koń', 'Koń Pełnej Krwi Angielskiej', 'Brązowo-Biały', 'Mieszane', 12),
(18, 'Bajka', 'Female', '2011-10-19', 'Pies', 'Rottweiler', 'Czarno-Brązowy', 'Mieszane', 13),
(19, 'Borys', 'Male', '2012-08-16', 'Królik', 'Królik Kalifornijski', 'Biało-Czarny', 'Mieszane', 13),
(20, 'Dalia', 'Female', '2013-06-17', 'Kot', 'Kot Kartuski', 'Szary', 'Jednokolorowe', 14),
(21, 'Ozyrys', 'Male', '2019-03-08', 'Pies', 'Jamnik', 'Brązowy', 'Jednokolorowe', 15),
(22, 'Benji', 'Female', '2011-05-09', 'Koń', 'Kuc Szetlandzki', 'Biało-Brązowy', 'Mieszane', 16),
(23, 'Profesor', 'Male', '2013-03-22', 'Królik', 'Mały Baran', 'Brązowo-Szary', 'Mieszane', 17),
(24, 'Emi', 'Female', '2013-12-04', 'Pies', 'Border Collie', 'Czarno-Biały', 'Miesznae', 17),
(25, 'Fafik', 'Male', '2014-11-11', 'Pies', 'Cocker Spaniel Angielski', 'Złoty', 'Jednokolorowe', 18),
(26, 'Brutus', 'Male', '2016-02-19', 'Królik', 'Szynszyl Wielki', 'Szary', 'Jednokolorowe', 19),
(27, 'Mickey', 'Male', '2010-07-22', 'Koń', 'Tinker', 'Brązowo-Biały', 'Mieszane', 19),
(28, 'Maestro', 'Male', '2015-10-15', 'Pies', 'Samojed', 'Biały', 'Jednokolorowe', 19),
(29, 'Piorun', 'Male', '2019-01-02', 'Kot', 'Kot Balijski', 'Biało-Brązowy', 'Mieszane', 19),
(30, 'Amber', 'Female', '2020-03-18', 'Pies', 'Labrador Retriever', 'Czarny', 'Jednokolorowe', 20);

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

--
-- Zrzut danych tabeli `animal_diagnosis`
--

INSERT INTO `animal_diagnosis` (`animal_diagnosis_id`, `regimen`, `appointment_id`, `diagnosis_id`) VALUES
(1, 'Zalecany kołnierz ochronny', 3, 5),
(2, 'Zalecane ograniczenie spacerów oraz kontakt z innymi zwięrzętami', 1, 10),
(3, 'Zaleca się całowity zakaraz wyjadu konia z terenu stajni', 6, 5),
(4, 'Zalecany kołnierz ochronny oraz ogarniczenie spacerów na mrozie', 24, 14),
(5, 'Zalecane ograniczenie spacerów oraz kontakt z innymi zwięrzętami', 7, 10),
(6, 'Zalecany kołnierz ochronny oraz ogarniczenie spacerów na mrozie', 14, 7),
(7, 'Zalecane ograniczenie spacerów oraz kontakt z innymi zwięrzętami', 14, 10),
(8, 'Zalecane pozostawienie w klinice do czasu operacji', 4, 3),
(9, 'Zaleca się całowity zakaraz wyjadu konia z terenu stajni', 6, 3),
(10, 'Zalecany krople do oczu', 19, 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `appointment`
--

CREATE TABLE `appointment` (
  `appointment_id` int(11) NOT NULL,
  `data` date NOT NULL,
  `time` time NOT NULL,
  `veterinarian_id` int(11) NOT NULL,
  `animal_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `appointment`
--

INSERT INTO `appointment` (`appointment_id`, `data`, `time`, `veterinarian_id`, `animal_id`) VALUES
(1, '2020-07-01', '10:00:00', 1, 2),
(2, '2020-07-01', '12:00:00', 1, 4),
(3, '2020-07-01', '14:00:00', 1, 17),
(4, '2020-07-01', '16:00:00', 1, 23),
(5, '2020-07-02', '10:00:00', 2, 13),
(6, '2020-07-02', '12:00:00', 2, 5),
(7, '2020-07-02', '14:00:00', 2, 8),
(8, '2020-07-02', '16:00:00', 2, 14),
(9, '2020-07-03', '10:00:00', 3, 26),
(10, '2020-07-03', '12:00:00', 3, 1),
(11, '2020-07-03', '14:00:00', 3, 15),
(12, '2020-07-03', '16:00:00', 3, 2),
(13, '2020-07-04', '10:00:00', 4, 6),
(14, '2020-07-04', '12:00:00', 4, 21),
(15, '2020-07-04', '14:00:00', 4, 9),
(16, '2020-07-04', '16:00:00', 4, 20),
(17, '2020-07-05', '10:00:00', 5, 7),
(18, '2020-07-05', '12:00:00', 5, 11),
(19, '2020-07-05', '14:00:00', 5, 19),
(20, '2020-07-05', '16:00:00', 5, 12),
(21, '2020-07-06', '10:00:00', 6, 16),
(22, '2020-07-06', '12:00:00', 6, 27),
(23, '2020-07-06', '14:00:00', 6, 30),
(24, '2020-07-06', '16:00:00', 6, 24);

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

--
-- Zrzut danych tabeli `drug`
--

INSERT INTO `drug` (`drug_id`, `drug_name`) VALUES
(1, 'Antybiotyk'),
(2, 'Witaminy'),
(3, 'Suplementy diety'),
(4, 'Krople'),
(5, 'Maść'),
(6, 'Kroplówka z glukozą i aminokwasami'),
(7, 'Kroplówla z elektrolitami'),
(8, 'Leki osłaniające błonę śluzową żołądka'),
(9, 'Surowica przeciwwirusowa'),
(10, 'Zastrzyki');

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

--
-- Zrzut danych tabeli `drug_plan`
--

INSERT INTO `drug_plan` (`drug_plan_id`, `diagnosis_id`, `advices`, `drug_id`) VALUES
(1, 1, 'Zalecane natychmiastowe wykonanie badań krwi.', 9),
(2, 1, 'Stosowanie: dwa razy dziennie (dodawane do posiłku) przez najbliższy tydzień. Później konsultacja kontrolna.', 1),
(3, 3, 'Skierowanie na natychmiastową hospitalizację.', 10),
(4, 12, 'Suplementacja: 2 razy w tygodniu przez następny miesiąc.', 3),
(5, 14, 'Stosowanie: zakraplać uszy 2 razy dziennie, rano oraz wieczorem.', 4);

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

--
-- Zrzut danych tabeli `prescription`
--

INSERT INTO `prescription` (`perscription_id`, `veterinarian_id`, `drug_plan_id`) VALUES
(1, 1, 1),
(2, 1, 3),
(3, 2, 5),
(4, 2, 2),
(5, 3, 1),
(6, 3, 2),
(7, 4, 2),
(8, 4, 4),
(9, 5, 3),
(10, 5, 5),
(11, 6, 2),
(12, 6, 3);

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
  ADD KEY `veterinarian_id` (`veterinarian_id`),
  ADD KEY `animal_pk` (`animal_id`);

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
  MODIFY `animal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT dla tabeli `animal_diagnosis`
--
ALTER TABLE `animal_diagnosis`
  MODIFY `animal_diagnosis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT dla tabeli `diagnosis`
--
ALTER TABLE `diagnosis`
  MODIFY `diagnosis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT dla tabeli `drug`
--
ALTER TABLE `drug`
  MODIFY `drug_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `drug_plan`
--
ALTER TABLE `drug_plan`
  MODIFY `drug_plan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `owner`
--
ALTER TABLE `owner`
  MODIFY `owner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT dla tabeli `prescription`
--
ALTER TABLE `prescription`
  MODIFY `perscription_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT dla tabeli `veterinarian`
--
ALTER TABLE `veterinarian`
  MODIFY `veterinarian_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `animal_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `owner` (`owner_id`);

--
-- Ograniczenia dla tabeli `animal_diagnosis`
--
ALTER TABLE `animal_diagnosis`
  ADD CONSTRAINT `animal_diagnosis_ibfk_2` FOREIGN KEY (`diagnosis_id`) REFERENCES `diagnosis` (`diagnosis_id`),
  ADD CONSTRAINT `animal_diagnosis_ibfk_3` FOREIGN KEY (`appointment_id`) REFERENCES `appointment` (`appointment_id`);

--
-- Ograniczenia dla tabeli `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `animal_pk` FOREIGN KEY (`animal_id`) REFERENCES `animal` (`animal_id`),
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
  ADD CONSTRAINT `prescription_ibfk_2` FOREIGN KEY (`drug_plan_id`) REFERENCES `drug_plan` (`drug_plan_id`),
  ADD CONSTRAINT `prescription_ibfk_3` FOREIGN KEY (`veterinarian_id`) REFERENCES `veterinarian` (`veterinarian_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
