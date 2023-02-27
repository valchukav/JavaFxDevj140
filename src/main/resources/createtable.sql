﻿CREATE TABLE person
(
    id        INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 0,
    INCREMENT BY 1
) ,
    jobtitle          VARCHAR(100),
    firstnamelastname VARCHAR(100),
    phone             VARCHAR(50),
    email             VARCHAR(100)
);

CREATE TABLE domains
(
    id        INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 0,
    INCREMENT BY 1
) ,
    webname    VARCHAR(100),
    domainname VARCHAR(50),
    ip         VARCHAR(500),
    datereg    TIMESTAMP,
    countryreg VARCHAR(500),
    personid   INT,
    FOREIGN KEY (personid) references person (id)
);

CREATE TABLE users
(
    id        INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 0,
    INCREMENT BY 1
) ,
    name     VARCHAR(100),
    password VARCHAR(100)
);

INSERT INTO users(name, password)
VALUES ('admin', 'admin');


INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('HR Specialist', 'Ethan Newton', '5-702-837-4314', 'Ethan_Newton8123@famism.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('HR Coordinator', 'Sharon Tutton', '6-633-143-0221', 'Sharon_Tutton1608@ubusive.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Biologist', 'Tony Todd', '8-744-635-4022', 'Tony_Todd770@orer.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Accountant', 'Jolene Richardson', '5-277-326-2605', 'Jolene_Richardson3224@fuliss.net');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Operator', 'Carol Cadman', '4-063-036-8121', 'Carol_Cadman9853@acrit.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('HR Coordinator', 'Wade Adams', '2-325-546-2020', 'Wade_Adams1381@yahoo.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Ambulatory Nurse', 'Alma Pope', '0-215-570-8205', 'Alma_Pope2514@bretoux.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Assistant Buyer', 'Barney Kennedy', '8-430-848-1806', 'Barney_Kennedy8159@sveldo.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Global Logistics Supervisor', 'Christy Glynn', '6-505-642-6341', 'Christy_Glynn43@bauros.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Cashier', 'Robyn Smith', '0-802-172-4572', 'Robyn_Smith767@sveldo.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Operator', 'Mason Tennant', '5-100-100-2487', 'Mason_Tennant1622@nanoff.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Chef Manager', 'Enoch Locke', '1-747-477-1058', 'Enoch_Locke6295@eirey.tech');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Design Engineer', 'Bryon Walsh', '4-181-788-8573', 'Bryon_Walsh3023@corti.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('HR Coordinator', 'Emery Cann', '5-013-022-8131', 'Emery_Cann6739@twipet.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('IT Support Staff', 'Rocco Wood', '4-275-285-7883', 'Rocco_Wood8752@grannar.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Dentist', 'Johnny Adams', '1-211-476-2647', 'Johnny_Adams2792@bretoux.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('CNC Operator', 'Peter Yarwood', '2-545-205-4137', 'Peter_Yarwood440@vetan.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Pharmacist', 'Sarah Morley', '0-154-030-3536', 'Sarah_Morley5986@mafthy.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Ambulatory Nurse', 'Domenic Mooney', '4-372-825-5247', 'Domenic_Mooney2345@deons.tech');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Systems Administrator', 'Brooklyn Mcgee', '3-773-224-2567', 'Brooklyn_Mcgee9239@womeona.net');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Staffing Consultant', 'Owen Holmes', '8-540-188-8671', 'Owen_Holmes1095@womeona.net');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Loan Officer', 'Mason Hunter', '8-443-213-8257', 'Mason_Hunter6790@naiker.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Design Engineer', 'Maribel Nicholls', '0-138-287-3432', 'Maribel_Nicholls2120@sveldo.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Loan Officer', 'Leroy Foxley', '8-804-641-0821', 'Leroy_Foxley2318@bungar.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Paramedic', 'Marjorie Pratt', '2-626-656-8661', 'Marjorie_Pratt7619@nanoff.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Service Supervisor', 'Havana Boyle', '5-345-351-7256', 'Havana_Boyle1995@mafthy.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Front Desk Coordinator', 'Kamila Stone', '0-182-133-5870', 'Kamila_Stone3070@bauros.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Accountant', 'Harriet Lindsay', '5-406-810-7488', 'Harriet_Lindsay7274@tonsy.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Insurance Broker', 'Alba James', '1-645-400-0471', 'Alba_James5613@grannar.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Design Engineer', 'Domenic Leigh', '5-850-008-3634', 'Domenic_Leigh8948@brety.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Accountant', 'Alan Becker', '8-533-138-6428', 'Alan_Becker2450@bulaffy.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Call Center Representative', 'Bryon Snell', '8-732-065-1655', 'Bryon_Snell1225@brety.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Treasurer', 'Johnny Logan', '5-600-445-3568', 'Johnny_Logan1948@hourpy.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Treasurer', 'Gemma Gregory', '3-470-787-2373', 'Gemma_Gregory5537@deavo.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Restaurant Manager', 'Daniel Vane', '7-824-436-8485', 'Daniel_Vane9936@bungar.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Systems Administrator', 'Eden Edley', '1-341-772-7052', 'Eden_Edley8507@bungar.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Bookkeeper', 'John Wright', '1-824-800-1281', 'John_Wright2467@joiniaa.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Production Painter', 'Kieth Michael', '5-735-800-6364', 'Kieth_Michael576@womeona.net');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Operator', 'Fred Wilcox', '4-821-224-8470', 'Fred_Wilcox6158@nimogy.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Software Engineer', 'Hayden Reid', '3-874-271-7425', 'Hayden_Reid859@typill.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Accountant', 'Caleb Cooper', '6-668-348-5328', 'Caleb_Cooper670@nickia.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Operator', 'Hadley Lewin', '5-772-110-2687', 'Hadley_Lewin9032@deavo.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Global Logistics Supervisor', 'Roger Rogan', '7-818-838-8741', 'Roger_Rogan7885@orer.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Machine Operator', 'Leslie Saunders', '3-362-455-6550', 'Leslie_Saunders6904@deavo.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Investment  Advisor', 'Elle Cameron', '4-806-548-3358', 'Elle_Cameron4686@qater.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Designer', 'Kate Pearce', '4-237-235-1377', 'Kate_Pearce2397@sveldo.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Banker', 'Sienna Quinn', '4-773-686-8085', 'Sienna_Quinn2290@naiker.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Auditor', 'Ron Morris', '8-856-143-4251', 'Ron_Morris1386@jiman.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('CNC Operator', 'Phillip Butler', '3-311-726-8138', 'Phillip_Butler9827@mafthy.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Loan Officer', 'Benny Downing', '1-825-323-7335', 'Benny_Downing7555@typill.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Executive Director', 'Benny Collis', '2-540-157-6814', 'Benny_Collis5520@nimogy.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Retail Trainee', 'Ryan Anderson', '3-838-006-2380', 'Ryan_Anderson1932@supunk.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Associate Professor', 'Luke Yoman', '8-308-033-7308', 'Luke_Yoman3225@brety.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Ambulatory Nurse', 'Hank Owen', '0-612-147-6666', 'Hank_Owen5663@gompie.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Associate Professor', 'Sofie Cox', '4-743-350-0506', 'Sofie_Cox9437@iatim.tech');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Machine Operator', 'Matt Vincent', '7-420-671-1255', 'Matt_Vincent2834@hourpy.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Assistant Buyer', 'Macy Lindop', '4-451-601-2540', 'Macy_Lindop8104@twace.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Pharmacist', 'Scarlett Aldridge', '4-673-682-1103', 'Scarlett_Aldridge7932@typill.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Pharmacist', 'Abdul Lee', '4-137-041-6131', 'Abdul_Lee3690@sveldo.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Budget Analyst', 'Jenna Morris', '2-820-742-8506', 'Jenna_Morris4486@sheye.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('HR Specialist', 'Tyler Eyres', '2-717-326-5551', 'Tyler_Eyres8365@yahoo.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Paramedic', 'Gil Edley', '0-041-550-7434', 'Gil_Edley3285@supunk.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Restaurant Manager', 'Nicholas Booth', '5-642-765-4281', 'Nicholas_Booth706@womeona.net');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Systems Administrator', 'Lara Carter', '2-856-511-8772', 'Lara_Carter2324@tonsy.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Food Technologist', 'Cassidy Tyler', '4-143-128-6367', 'Cassidy_Tyler8114@extex.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Electrician', 'Melania Porter', '7-264-843-2882', 'Melania_Porter2459@famism.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Designer', 'Scarlett Clifton', '3-576-056-8242', 'Scarlett_Clifton1826@orer.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Production Painter', 'Adela Foxley', '5-672-461-0135', 'Adela_Foxley4917@acrit.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Executive Director', 'Harmony Morrow', '1-004-750-5681', 'Harmony_Morrow1074@dionrab.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Executive Director', 'Anthony Ross', '7-364-776-6720', 'Anthony_Ross4374@orer.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Clerk', 'Carter Ross', '1-413-716-5760', 'Carter_Ross9700@twace.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Auditor', 'Bob Ventura', '4-247-213-7838', 'Bob_Ventura1865@orer.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Mobile Developer', 'Macy Osmond', '4-166-028-7016', 'Macy_Osmond7033@brety.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Web Developer', 'Noah Wellington', '5-236-837-5777', 'Noah_Wellington4509@infotech44.tech');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('IT Support Staff', 'Bryce Weston', '2-674-404-0205', 'Bryce_Weston1345@liret.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Machine Operator', 'Parker Johnson', '1-266-567-1141', 'Parker_Johnson3700@dionrab.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Healthcare Specialist', 'Lindsay Michael', '2-311-118-6632', 'Lindsay_Michael4372@vetan.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Laboratory Technician', 'Abbey Osman', '6-108-688-3353', 'Abbey_Osman6299@nanoff.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Design Engineer', 'Rebecca Yard', '5-210-007-8835', 'Rebecca_Yard7139@grannar.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Bellman', 'Crystal Hunt', '5-071-441-7755', 'Crystal_Hunt1477@corti.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Loan Officer', 'Barry Brown', '2-706-611-0752', 'Barry_Brown6356@typill.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Design Engineer', 'Hael Radcliffe', '1-220-078-2232', 'Hael_Radcliffe7763@joiniaa.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Executive Director', 'Shannon Dowson', '2-115-876-0678', 'Shannon_Dowson1637@extex.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Doctor', 'Samantha Parker', '4-583-100-3368', 'Samantha_Parker2534@joiniaa.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Clerk', 'Elena Hunter', '7-122-235-8380', 'Elena_Hunter982@jiman.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Pharmacist', 'Makenie Evans', '3-056-011-1417', 'Makenie_Evans8301@ubusive.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Front Desk Coordinator', 'Lynn Wright', '6-043-122-3700', 'Lynn_Wright3294@atink.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Service Supervisor', 'Hadley Jeffery', '3-440-680-0727', 'Hadley_Jeffery1372@fuliss.net');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Software Engineer', 'Rhea Nielson', '1-053-173-2110', 'Rhea_Nielson8668@ubusive.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Loan Officer', 'Martin Mooney', '6-742-803-3303', 'Martin_Mooney2937@hourpy.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Ambulatory Nurse', 'ara Truscott', '6-752-261-6478', 'ara_Truscott1784@corti.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Loan Officer', 'Michelle Talbot', '1-756-181-0778', 'Michelle_Talbot9728@supunk.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Executive Director', 'Rose Eastwood', '5-004-302-4313', 'Rose_Eastwood1588@orer.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Staffing Consultant', 'Hayden Moreno', '0-553-484-1382', 'Hayden_Moreno7727@atink.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Cash Manager', 'Eden Hope', '3-747-662-1666', 'Eden_Hope8985@infotech44.tech');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('IT Support Staff', 'Hank Thomas', '7-186-114-2000', 'Hank_Thomas7434@twipet.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Business Broker', 'Harry Hopkins', '5-525-373-1616', 'Harry_Hopkins2797@kideod.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Treasurer', 'Maribel Hale', '1-155-268-5652', 'Maribel_Hale4710@corti.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Biologist', 'Daron Goodman', '0-782-425-4387', 'Daron_Goodman53@mafthy.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Associate Professor', 'Chester Moore', '0-888-382-0611', 'Chester_Moore7403@liret.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Steward', 'Grace Yarlett', '1-860-670-0761', 'Grace_Yarlett5658@deons.tech');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('HR Specialist', 'Mara Partridge', '3-623-675-1714', 'Mara_Partridge7904@nanoff.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Assistant Buyer', 'William Nash', '6-248-308-8411', 'William_Nash5166@mafthy.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Business Broker', 'Tyson Bell', '2-355-310-8765', 'Tyson_Bell2519@nickia.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Physician', 'Meredith Eaton', '8-674-053-4164', 'Meredith_Eaton6247@tonsy.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Front Desk Coordinator', 'Chadwick Hill', '0-238-213-0423', 'Chadwick_Hill6856@orer.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Software Engineer', 'Ramon Glass', '3-352-272-1235', 'Ramon_Glass2795@nimogy.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Retail Trainee', 'Hannah Hale', '3-115-554-3428', 'Hannah_Hale8067@twipet.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Bookkeeper', 'Owen Carter', '2-071-741-7066', 'Owen_Carter7881@hourpy.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Designer', 'Morgan Evans', '2-474-660-7642', 'Morgan_Evans3054@fuliss.net');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Paramedic', 'Martin Bryant', '6-101-560-6587', 'Martin_Bryant6350@nickia.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Treasurer', 'Ronald Cork', '5-275-426-2087', 'Ronald_Cork5327@famism.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Treasurer', 'Kenie Newton', '4-864-677-6172', 'Kenie_Newton2176@dionrab.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('IT Support Staff', 'Adalind Hunt', '8-578-283-7461', 'Adalind_Hunt2076@gompie.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('HR Specialist', 'Chris Antcliff', '4-722-740-7334', 'Chris_Antcliff621@fuliss.net');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Baker', 'Alan Benfield', '2-222-203-5105', 'Alan_Benfield5444@gompie.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Associate Professor', 'Boris Bristow', '0-500-007-0847', 'Boris_Bristow7952@womeona.net');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Stockbroker', 'Chuck Dempsey', '4-610-168-5644', 'Chuck_Dempsey3300@sheye.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Investment  Advisor', 'Johnny Hill', '3-615-114-2254', 'Johnny_Hill8069@iatim.tech');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Insurance Broker', 'Benny Collingwood', '5-455-770-4353', 'Benny_Collingwood7420@nanoff.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Lecturer', 'Juliette Johnson', '8-061-255-7813', 'Juliette_Johnson8178@dionrab.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Executive Director', 'Beatrice Hastings', '6-766-471-1751', 'Beatrice_Hastings5005@atink.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Banker', 'Jennifer Lynn', '7-674-378-6866', 'Jennifer_Lynn6429@jiman.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Call Center Representative', 'Priscilla Fall', '4-764-415-0303', 'Priscilla_Fall3413@bauros.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Chef Manager', 'Camellia Lewin', '8-084-386-8413', 'Camellia_Lewin5407@vetan.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Clerk', 'Clint Harris', '8-158-241-4875', 'Clint_Harris4049@gembat.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Cash Manager', 'Javier Hancock', '8-505-078-4882', 'Javier_Hancock4743@typill.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Stockbroker', 'Rocco Wallace', '7-276-546-8311', 'Rocco_Wallace5901@bretoux.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Business Broker', 'Jacob Noach', '6-843-725-4348', 'Jacob_Noach479@sveldo.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Insurance Broker', 'Christy John', '0-028-312-6667', 'Christy_John8833@muall.tech');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Laboratory Technician', 'Margot Tindall', '6-733-881-2287', 'Margot_Tindall9198@bretoux.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Chef Manager', 'Marie Ingram', '1-000-371-6157', 'Marie_Ingram5953@nimogy.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Stockbroker', 'Louise Rothwell', '6-720-100-6014', 'Louise_Rothwell7629@acrit.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Front Desk Coordinator', 'Liam Harper', '3-006-301-6623', 'Liam_Harper6300@gompie.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('CNC Operator', 'Doug Jacobs', '0-466-008-3256', 'Doug_Jacobs9111@qater.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Webmaster', 'Samantha Boyle', '3-785-370-3366', 'Samantha_Boyle441@cispeto.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Staffing Consultant', 'Hailey Isaac', '8-700-380-2033', 'Hailey_Isaac7990@bulaffy.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Operator', 'Marina Knight', '5-103-566-3622', 'Marina_Knight3795@bauros.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Investment  Advisor', 'Percy Gordon', '6-657-078-2236', 'Percy_Gordon5803@corti.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Auditor', 'Tony Mitchell', '3-268-203-6667', 'Tony_Mitchell9157@bretoux.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Restaurant Manager', 'Julius Drew', '7-128-531-1238', 'Julius_Drew7802@gembat.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Design Engineer', 'Elisabeth Sawyer', '1-835-451-0301', 'Elisabeth_Sawyer3698@fuliss.net');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Mobile Developer', 'Cedrick Michael', '2-678-785-6054', 'Cedrick_Michael9423@kideod.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Audiologist', 'Caydence Fields', '6-127-341-7120', 'Caydence_Fields7745@twipet.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Chef Manager', 'Kirsten Fall', '7-530-206-7486', 'Kirsten_Fall1264@ovock.tech');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Electrician', 'Johnathan Edley', '6-352-826-0655', 'Johnathan_Edley9957@deavo.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Project Manager', 'Gil Anderson', '7-723-415-0843', 'Gil_Anderson7066@gembat.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Front Desk Coordinator', 'Leilani Noon', '2-028-836-8531', 'Leilani_Noon8151@bauros.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Software Engineer', 'Gil Olivier', '6-732-210-1862', 'Gil_Olivier3775@corti.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Associate Professor', 'Candice Price', '4-863-745-3773', 'Candice_Price2049@tonsy.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Insurance Broker', 'Owen Norton', '1-452-882-6853', 'Owen_Norton5604@deons.tech');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Banker', 'Cedrick Wilde', '7-621-727-8325', 'Cedrick_Wilde121@sheye.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Cook', 'Boris Mann', '6-626-404-6871', 'Boris_Mann8457@naiker.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('IT Support Staff', 'Janice Walsh', '3-033-216-3565', 'Janice_Walsh6747@nanoff.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Paramedic', 'Rocco Nicholls', '7-258-367-4746', 'Rocco_Nicholls553@gompie.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Designer', 'Tess Hudson', '0-434-344-2727', 'Tess_Hudson536@bauros.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Healthcare Specialist', 'Agnes Rossi', '4-265-834-7460', 'Agnes_Rossi3698@dionrab.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Physician', 'Chuck Dallas', '0-335-360-5538', 'Chuck_Dallas4351@twace.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Audiologist', 'William Cobb', '3-885-107-6874', 'William_Cobb9599@sheye.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Baker', 'Miley Wilcox', '5-758-045-0305', 'Miley_Wilcox4365@bretoux.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Production Painter', 'Noemi Coleman', '3-482-825-8485', 'Noemi_Coleman6181@naiker.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Lecturer', 'Denny Swan', '1-530-233-5602', 'Denny_Swan2398@vetan.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Paramedic', 'Benjamin Flynn', '1-704-650-8550', 'Benjamin_Flynn4223@vetan.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Inspector', 'Aurelia Cooper', '6-080-115-6122', 'Aurelia_Cooper7243@bulaffy.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Machine Operator', 'Aileen King', '5-626-403-0573', 'Aileen_King1713@sveldo.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Design Engineer', 'Cara Ross', '1-765-864-7426', 'Cara_Ross2717@nickia.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Cash Manager', 'Tyson Roberts', '4-172-104-0432', 'Tyson_Roberts5186@sveldo.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Loan Officer', 'Carrie Hope', '7-724-606-8065', 'Carrie_Hope7417@extex.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Dentist', 'Matthew Irving', '3-123-872-4432', 'Matthew_Irving3403@gmail.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Operator', 'Mayleen Gilmore', '7-318-710-3137', 'Mayleen_Gilmore3262@corti.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Restaurant Manager', 'Stephanie Knight', '8-728-700-0163', 'Stephanie_Knight5549@muall.tech');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Treasurer', 'William Wood', '2-555-402-8743', 'William_Wood1998@fuliss.net');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Fabricator', 'Benny Doherty', '0-043-031-8635', 'Benny_Doherty8034@grannar.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('HR Specialist', 'Jayden Yarwood', '7-417-470-8045', 'Jayden_Yarwood8036@atink.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Cashier', 'Kieth Holmes', '6-652-223-6755', 'Kieth_Holmes1831@eirey.tech');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Chef Manager', 'Noah Murphy', '3-530-424-3075', 'Noah_Murphy1536@grannar.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Front Desk Coordinator', 'Norah Ellis', '8-265-427-1614', 'Norah_Ellis8016@sheye.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Fabricator', 'Vicky Cooper', '1-656-141-7237', 'Vicky_Cooper5421@eirey.tech');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Retail Trainee', 'Jacob Dillon', '7-114-725-8708', 'Jacob_Dillon5965@eirey.tech');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Audiologist', 'Jessica Buckley', '6-510-765-6288', 'Jessica_Buckley6015@irrepsy.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Associate Professor', 'Mona Mills', '7-864-330-7331', 'Mona_Mills2620@yahoo.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Baker', 'Parker Knight', '7-513-035-7435', 'Parker_Knight2987@acrit.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Insurance Broker', 'Javier Miller', '3-450-321-2424', 'Javier_Miller4785@liret.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Clerk', 'Nicholas Holmes', '6-628-740-5783', 'Nicholas_Holmes5156@extex.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Baker', 'Barney Anderson', '7-865-420-1401', 'Barney_Anderson3326@bretoux.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Pharmacist', 'Elle Stanton', '6-080-584-3526', 'Elle_Stanton7463@cispeto.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Dentist', 'Eryn Rainford', '7-651-231-7248', 'Eryn_Rainford3130@womeona.net');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Baker', 'Bob Wilton', '2-210-282-1782', 'Bob_Wilton3712@yahoo.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Pharmacist', 'Louise Silva', '7-334-366-1244', 'Louise_Silva1188@yahoo.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Front Desk Coordinator', 'Barry Dwyer', '1-610-562-8338', 'Barry_Dwyer4377@liret.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Auditor', 'Summer Shepherd', '4-818-754-7846', 'Summer_Shepherd800@qater.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Inspector', 'Javier Waterson', '5-260-150-4027', 'Javier_Waterson7744@deons.tech');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Lecturer', 'Joseph Appleton', '4-301-216-2524', 'Joseph_Appleton8487@grannar.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Banker', 'Katelyn Hunt', '1-552-230-3736', 'Katelyn_Hunt767@guentu.bi');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Web Developer', 'Carmen Driscoll', '4-506-210-7534', 'Carmen_Driscoll6842@irrepsy.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Service Supervisor', 'Camila Hall', '5-813-108-7470', 'Camila_Hall1520@brety.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Front Desk Coordinator', 'Caleb Gavin', '7-315-845-3685', 'Caleb_Gavin7165@bretoux.com');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Treasurer', 'Madelyn Uttley', '0-117-251-8638', 'Madelyn_Uttley7013@orer.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Fabricator', 'Chester Bloom', '0-421-645-8403', 'Chester_Bloom650@liret.org');
INSERT INTO person (jobtitle, firstnamelastname, phone, email)
VALUES ('Associate Professor', 'Ryan Olivier', '4-135-560-5115', 'Ryan_Olivier7331@typill.bi');

INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('BeReady', 'com', '169.64.33.65', '2003-12-07 18:58:40', 'Cameroon', 21);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Andes Shop', 'info', '154.231.122.187', '2003-12-03 22:26:20', 'Togo', 195);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Craye', 'tech', '132.181.227.138', '2017-01-16 13:34:38', 'Uruguay', 144);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Shost', 'org', '168.124.97.169', '1996-11-20 12:00:06', 'Bangladesh', 48);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Run24', 'com', '93.126.74.19', '2011-05-20 11:56:40', 'Ubekistan', 71);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Solaplay', 'com', '236.112.242.19', '2008-07-09 06:35:51', 'Laos', 111);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Baywtch', 'tech', '151.201.188.71', '2000-03-21 09:11:16', 'Kaakhstan', 15);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Page One Shop', 'info', '71.128.213.30', '2007-11-05 13:11:17', 'Greece', 99);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Solaplay', 'bi', '157.239.147.69', '2001-03-25 05:10:47', 'Myanmar', 108);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Avatar Mobile', 'us', '190.171.183.75', '2002-05-06 10:17:50', 'Honduras', 140);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Caint', 'us', '116.121.26.15', '2007-09-02 17:58:05', 'The Gambia', 113);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('OrTravel', 'us', '215.236.161.83', '2011-07-26 08:48:43', 'Vietnam', 160);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Rook', 'us', '219.230.37.74', '2018-07-17 20:53:53', 'Guatemala', 110);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Yola', 'bi', '37.28.113.165', '2013-02-20 08:57:10', 'USA', 138);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Partnip', 'info', '210.246.241.229', '2013-05-19 01:58:38', 'Turkmenistan', 1);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Gniteem', 'edu', '160.179.226.42', '2011-08-10 17:51:16', 'Singapore', 93);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Gniteem', 'tech', '235.44.47.162', '2011-09-18 04:05:09', 'Kyrgystan', 182);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('SolSol', 'info', '239.0.7.20', '2016-01-25 03:03:08', 'Latvia', 196);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Ytrap', 'com', '127.206.128.65', '2017-02-26 03:06:21', 'Sierra Leone', 30);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Koob', 'tech', '223.92.209.232', '2012-05-26 00:00:41', 'San Marino', 129);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Arty', 'net', '184.204.186.241', '2012-01-27 00:51:55', 'Botswana', 68);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Run24', 'us', '175.212.88.72', '2018-01-28 02:26:46', 'Sri Lanka', 64);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Bookoread', 'bi', '87.37.56.223', '2014-10-01 07:35:50', 'Tanania', 165);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Craye', 'us', '110.42.241.189', '2018-07-27 00:32:31', 'Morocco', 159);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Arty', 'us', '175.185.231.31', '2010-01-02 10:38:23', 'Afghanistan', 106);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Lopping', 'info', '208.1.244.216', '2012-08-08 06:25:50', 'Romania', 66);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Man Mobile', 'net', '42.180.131.252', '2016-09-10 15:57:32', 'Moldova', 27);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Gniteem', 'info', '101.123.166.35', '2012-01-22 03:24:52', 'Senegal', 135);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Prayons', 'info', '19.177.204.238', '2012-03-01 08:46:20', 'United Arab Emirates', 54);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Andes Shop', 'edu', '235.167.158.236', '2015-07-03 01:20:40', 'Moambique', 141);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Partnip', 'info', '161.76.170.41', '2015-09-02 21:04:28', 'Sierra Leone', 49);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Mettcal', 'us', '221.8.46.142', '2015-07-13 19:21:07', 'Netherlands', 33);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Bookoread', 'mobi', '130.124.84.126', '2016-02-16 05:26:21', 'imbabwe', 110);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('DeskGet', 'us', '177.159.111.236', '2011-02-17 10:41:39', 'Japan', 108);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Nime', 'mobi', '224.200.85.250', '2019-08-30 07:42:27', 'Saudi Arabia', 27);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Redsky', 'edu', '157.148.36.137', '2011-12-08 12:49:18', 'Nauru', 24);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Tracking Mobile', 'tech', '101.112.238.12', '2011-09-02 12:46:57', 'New ealand', 159);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Lopping', 'mobi', '231.119.7.235', '2013-10-10 19:57:33', 'Somalia', 2);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('DeskGet', 'net', '84.42.224.51', '2018-12-12 17:47:44', 'Mauritania', 121);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Enmeet', 'com', '99.171.0.138', '2013-07-03 15:58:48', 'Lithuania', 117);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('ShopFactory', 'ca', '130.231.122.227', '2016-03-09 06:44:22', 'Iceland', 63);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('ReadABook', 'info', '168.149.65.175', '2019-07-14 19:37:17', 'Kiribati', 26);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Craye', 'bi', '213.111.53.74', '2017-03-31 11:38:43', 'Belie', 109);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('LilyGrate', 'com', '66.231.157.158', '2019-06-30 04:45:04', 'Syria', 140);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Shoplist', 'tech', '107.78.207.28', '2011-12-10 07:26:22', 'Armenia', 64);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Nime', 'tech', '22.115.93.162', '2016-12-22 22:44:06', 'Swailand', 91);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Resinagro', 'us', '60.1.110.174', '2012-11-01 10:11:07', 'Chad', 89);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Tracking Mobile', 'tech', '173.136.200.53', '2019-08-12 07:25:55', 'Grenada', 181);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Craye', 'edu', '212.32.101.250', '2017-07-17 17:50:56', 'United Arab Emirates', 143);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Tracking Mobile', 'org', '229.194.1.233', '2013-03-09 21:08:37', 'Kaakhstan', 131);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Andes Shop', 'bi', '47.139.0.149', '2015-07-03 11:14:19', 'Dominican Republic', 4);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Man Mobile', 'info', '16.55.44.199', '2015-01-03 20:48:56', 'Brunei', 166);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('DeskGet', 'ca', '77.129.209.235', '2018-05-19 20:48:10', 'Cabo Verde', 51);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Caint', 'edu', '195.69.237.101', '2017-07-24 12:28:51', 'Latvia', 152);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Man Mobile', 'org', '192.93.12.172', '2013-07-10 22:27:20', 'San Marino', 130);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Aor', 'mobi', '169.80.144.147', '2012-07-19 15:04:47', 'Myanmar', 153);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Ytrap', 'ca', '248.109.120.31', '2015-05-28 09:25:31', 'France', 182);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Page One Shop', 'ca', '215.39.86.44', '2014-11-26 10:09:06', 'Kuwait', 81);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Solaplay', 'bi', '248.228.174.59', '2015-04-13 00:28:58', 'Yemen', 146);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('ReadABook', 'edu', '134.88.253.205', '2013-09-21 17:50:44', 'Saint Vincent and the Grenadines', 34);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Solaplay', 'us', '86.228.4.249', '2012-01-06 20:19:33', 'Equatorial Guinea', 60);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Yalp', 'edu', '190.52.214.157', '2016-02-23 04:02:06', 'Tonga', 186);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Redsky', 'edu', '114.92.226.61', '2019-02-21 22:01:47', 'Guinea-Bissau', 128);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Shoplist', 'com', '5.128.98.114', '2010-05-26 03:41:13', 'Aerbaijan', 106);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Nime', 'us', '231.62.78.246', '2019-03-22 14:34:23', 'imbabwe', 115);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Craye', 'info', '3.21.6.181', '2015-10-04 08:17:05', 'Korea, North', 7);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Enmeet', 'org', '203.150.177.81', '2014-03-30 09:14:54', 'United Kingdom', 173);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Sist', 'ca', '172.13.169.137', '2012-12-09 11:32:26', 'Somalia', 29);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Resinagro', 'ca', '27.254.238.217', '2018-12-18 22:41:51', 'Cameroon', 74);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Page One Shop', 'mobi', '236.67.43.210', '2013-01-25 14:55:08', 'Ghana', 144);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Fdeam', 'info', '174.194.10.208', '2018-08-26 03:56:38', 'Botswana', 73);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Bookoread', 'info', '124.99.173.88', '2017-09-05 10:38:17', 'Austria', 23);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Lopping', 'tech', '82.185.27.92', '2014-04-01 06:34:22', 'East Timor (Timor-Leste)', 140);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Page One Shop', 'edu', '233.226.97.126', '2010-01-09 11:22:32', 'The Gambia', 186);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Sist', 'org', '236.149.248.72', '2018-05-02 16:20:33', 'Central African Republic', 49);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Avatar Mobile', 'tech', '11.151.112.220', '2018-08-24 19:16:46', 'Morocco', 41);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Resinagro', 'info', '20.40.226.95', '2014-01-04 01:43:22', 'Tuvalu', 31);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Resinagro', 'net', '81.75.79.58', '2019-11-07 13:19:39', 'Serbia', 124);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Partnip', 'com', '19.133.195.57', '2013-03-01 12:42:42', 'Botswana', 138);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Bookoread', 'org', '216.247.213.25', '2011-08-04 02:21:52', 'Guinea-Bissau', 161);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('ROF', 'edu', '130.11.106.159', '2017-04-04 17:52:26', 'ambia', 13);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Aor', 'info', '72.130.184.212', '2012-10-31 16:27:36', 'Egypt', 79);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Orty', 'ca', '194.56.41.73', '2019-02-18 12:38:15', 'Denmark', 54);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('ReadABook', 'net', '35.25.212.100', '2015-01-14 17:11:46', 'Gabon', 125);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Yola', 'org', '97.137.117.112', '2019-02-07 21:23:06', 'Brunei', 5);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Tracking Mobile', 'net', '152.151.52.38', '2018-08-05 00:13:00', 'Nepal', 20);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('LilyGrate', 'ca', '224.19.206.88', '2018-10-11 13:42:07', 'Slovenia', 34);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Mettcal', 'tech', '25.55.234.15', '2016-04-01 13:56:06', 'Guyana', 33);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Caint', 'info', '138.12.95.161', '2019-06-18 18:11:16', 'Togo', 26);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Ingocal', 'info', '28.12.232.16', '2018-10-23 16:15:25', 'Sudan, South', 97);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Nime', 'bi', '29.41.33.50', '2016-11-22 13:05:41', 'Iraq', 117);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Yola', 'bi', '57.22.186.151', '2011-11-18 14:51:57', 'Lebanon', 130);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Andes Shop', 'com', '175.227.206.130', '2017-10-19 08:31:02', 'Nicaragua', 37);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Plalitaire', 'info', '172.253.32.67', '2012-04-15 19:57:30', 'Guyana', 151);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('BeReady', 'info', '253.169.114.16', '2011-12-15 01:31:27', 'Australia', 61);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Plalitaire', 'info', '197.146.203.232', '2013-07-21 17:08:02', 'Bangladesh', 98);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Mettcal', 'org', '127.154.236.205', '2015-11-23 09:34:54', 'The Gambia', 117);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Plalitaire', 'info', '235.117.108.233', '2016-01-05 01:01:21', 'China', 172);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Avatar Mobile', 'edu', '12.17.115.124', '2014-09-16 18:38:29', 'Ghana', 91);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Ingocal', 'us', '39.184.200.199', '2019-08-02 13:12:10', 'Macedonia', 109);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Trafor', 'net', '83.59.97.129', '2015-10-13 12:29:37', 'Singapore', 90);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('MemoMe', 'net', '249.24.79.64', '2011-10-06 00:29:27', 'Mali', 81);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('MyGameNight', 'org', '69.62.164.228', '2016-11-21 06:24:29', 'Palau', 168);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Yalp', 'ca', '106.35.8.51', '2015-12-31 21:53:41', 'Lithuania', 35);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Yola', 'net', '69.242.61.10', '2019-08-01 12:41:54', 'Dominican Republic', 89);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Arty', 'info', '229.154.246.207', '2010-06-14 05:31:07', 'Bulgaria', 185);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('BeReady', 'com', '250.75.128.243', '2010-04-13 01:57:05', 'Marshall Islands', 2);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('ShopFactory', 'tech', '15.94.113.139', '2016-06-27 05:53:57', 'Paraguay', 160);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('DeskGet', 'ca', '247.22.166.180', '2018-08-18 15:41:20', 'Singapore', 88);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Nime', 'tech', '6.192.105.104', '2015-09-01 03:46:52', 'Denmark', 51);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('MemoMe', 'net', '207.251.253.178', '2015-08-16 19:52:10', 'Nicaragua', 30);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Trafor', 'edu', '103.66.115.196', '2016-08-11 06:34:36', 'Korea, North', 137);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Craye', 'ca', '210.127.124.196', '2012-02-05 09:21:41', 'Pakistan', 195);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Shoplist', 'net', '172.254.81.63', '2018-05-01 20:44:51', 'Brail', 197);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Ytrap', 'info', '173.2.145.177', '2017-12-15 03:21:07', 'Vanuatu', 121);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Tracking Mobile', 'mobi', '96.31.37.148', '2019-05-20 06:04:25', 'Bhutan', 158);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Kulop', 'ca', '246.87.18.108', '2016-06-09 14:36:49', 'Solomon Islands', 53);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Kulop', 'us', '214.171.10.52', '2015-09-27 17:11:03', 'Switerland', 158);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Tracking Mobile', 'edu', '188.45.21.125', '2014-04-15 13:50:52', 'Thailand', 49);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Solaplay', 'ca', '15.239.49.208', '2015-01-08 00:01:06', 'Veneuela', 26);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Solaplay', 'bi', '59.224.206.152', '2016-08-25 00:11:10', 'Dominican Republic', 128);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('LilyGrate', 'tech', '143.31.235.233', '2013-05-26 04:05:34', 'Monaco', 143);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Yalp', 'net', '146.95.17.22', '2018-09-10 17:22:35', 'Haiti', 194);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Paie', 'us', '195.65.70.227', '2015-05-29 12:50:24', 'Montenegro', 87);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Paie', 'com', '28.28.176.212', '2010-07-12 03:09:30', 'Finland', 25);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Fdeam', 'info', '244.27.104.182', '2017-01-01 01:18:34', 'Ethiopia', 177);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Yalp', 'bi', '235.52.137.99', '2010-09-28 16:24:07', 'Micronesia', 38);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Koob', 'net', '16.140.146.74', '2013-10-18 17:17:37', 'Colombia', 8);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Prayons', 'org', '37.34.38.46', '2016-07-17 15:00:12', 'East Timor (Timor-Leste)', 106);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Mettcal', 'com', '155.197.163.2', '2014-11-15 20:06:45', 'Iceland', 150);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Redsky', 'tech', '127.5.198.30', '2012-09-21 11:54:51', 'Honduras', 117);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Paie', 'tech', '147.61.1.115', '2019-04-28 17:40:31', 'Laos', 147);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('LilyGrate', 'us', '25.72.237.88', '2015-03-20 03:48:23', 'Spain', 87);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('LilyGrate', 'bi', '226.227.157.115', '2011-10-12 00:33:01', 'Rwanda', 180);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Resinagro', 'edu', '224.168.148.96', '2010-03-12 02:04:44', 'Germany', 148);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Fdeam', 'ca', '147.147.241.25', '2010-06-04 19:14:08', 'Madagascar', 179);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Ingocal', 'info', '34.60.236.155', '2010-11-23 15:29:11', 'Grenada', 92);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('SolSol', 'info', '149.111.83.94', '2015-02-20 21:45:08', 'Ukraine', 60);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Tracking Mobile', 'us', '20.117.63.175', '2017-12-15 06:53:57', 'Egypt', 57);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Paie', 'com', '48.117.147.173', '2015-11-11 18:27:06', 'Singapore', 135);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Plalitaire', 'ca', '132.224.196.163', '2019-07-10 09:24:49', 'Bhutan', 179);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Craye', 'tech', '105.207.137.144', '2017-01-27 11:10:17', 'Albania', 99);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Gniteem', 'org', '86.21.228.11', '2016-01-10 17:53:23', 'Qatar', 181);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Page One Shop', 'tech', '132.67.214.171', '2016-03-15 09:27:17', 'Bulgaria', 171);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Shost', 'edu', '73.227.141.159', '2016-09-30 04:08:01', 'Barbados', 172);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('DeskGet', 'us', '134.95.251.155', '2016-08-01 02:45:29', 'Cameroon', 151);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Nime', 'info', '165.127.108.200', '2015-08-30 20:57:28', 'Côte d’Ivoire', 91);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('MemoMe', 'org', '51.73.228.187', '2018-07-18 03:04:38', 'East Timor (Timor-Leste)', 156);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Yalp', 'edu', '108.216.76.206', '2014-12-18 17:46:30', 'Congo, Republic of the', 51);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Koob', 'us', '201.89.249.206', '2010-02-22 18:14:04', 'Panama', 6);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Vrigo', 'tech', '58.8.185.127', '2015-08-17 09:19:50', 'Yemen', 184);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Rook', 'bi', '150.40.98.13', '2012-06-19 05:06:55', 'Korea, North', 176);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Andes Shop', 'edu', '42.67.192.35', '2010-03-01 01:51:23', 'Marshall Islands', 119);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Enmeet', 'us', '9.73.212.115', '2018-10-12 02:38:50', 'Kuwait', 157);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Arty', 'tech', '111.46.102.98', '2010-02-19 10:23:20', 'Georgia', 59);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Sist', 'edu', '162.49.80.71', '2019-05-03 22:44:58', 'Tanania', 65);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Ytrap', 'ca', '101.166.3.49', '2018-09-23 01:25:22', 'India', 3);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('ReadABook', 'ca', '171.126.119.247', '2018-12-21 05:57:43', 'Syria', 81);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Yola', 'tech', '203.95.207.4', '2019-03-26 05:09:06', 'Antigua and Barbuda', 4);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Trafor', 'info', '116.50.28.1', '2016-10-12 21:22:36', 'Solomon Islands', 189);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Lopping', 'mobi', '127.198.198.86', '2015-02-09 06:24:58', 'Uganda', 56);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Orty', 'com', '69.108.86.207', '2010-03-14 13:11:38', 'Cyprus', 38);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Plalitaire', 'us', '31.245.224.0', '2018-05-23 04:14:49', 'Brail', 51);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Plalitaire', 'info', '115.209.191.227', '2014-07-18 22:25:10', 'Nepal', 50);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Solaplay', 'edu', '157.145.194.229', '2012-02-25 21:02:18', 'Mauritius', 152);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Bookoread', 'ca', '100.107.245.162', '2019-10-29 12:05:00', 'Paraguay', 15);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Rook', 'us', '214.77.13.130', '2018-08-30 07:12:51', 'Italy', 88);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Orty', 'edu', '110.85.21.208', '2019-07-25 04:58:40', 'Kosovo', 70);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Avatar Mobile', 'bi', '9.204.32.62', '2018-12-22 16:31:31', 'Saint Kitts and Nevis', 145);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Nime', 'edu', '229.135.140.234', '2010-04-16 07:09:55', 'Fiji', 100);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Bookoread', 'tech', '119.69.203.178', '2019-07-17 15:25:28', 'Libya', 174);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('SolSol', 'org', '55.245.179.128', '2017-08-16 19:14:41', 'Argentina', 125);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Mettcal', 'net', '168.20.32.67', '2019-07-11 12:08:31', 'Uruguay', 83);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('MyGameNight', 'com', '235.211.117.135', '2019-06-21 13:38:01', 'Macedonia', 119);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('ReadABook', 'mobi', '163.169.7.48', '2019-04-11 11:25:49', 'Yemen', 23);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Fdeam', 'org', '140.41.78.64', '2016-08-26 21:20:47', 'Canada', 160);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Enmeet', 'us', '97.182.103.181', '2016-11-27 20:36:03', 'Liechtenstein', 106);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('ShopFactory', 'mobi', '132.243.71.27', '2012-12-16 21:31:47', 'Samoa', 92);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Trafor', 'bi', '66.101.73.29', '2015-11-18 20:24:49', 'Saudi Arabia', 187);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Yola', 'mobi', '22.182.219.116', '2017-08-08 22:36:01', 'Belie', 156);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Solaplay', 'tech', '169.61.207.61', '2017-01-17 17:17:54', 'Finland', 52);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Partnip', 'mobi', '155.129.207.122', '2013-03-04 18:25:34', 'Central African Republic', 147);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Ytrap', 'info', '21.21.79.207', '2011-09-21 22:35:28', 'Brunei', 101);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Partnip', 'us', '22.42.143.78', '2016-02-04 20:47:48', 'Mauritius', 55);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Man Mobile', 'org', '42.35.227.190', '2019-12-09 03:37:54', 'Morocco', 107);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Yalp', 'bi', '118.123.18.197', '2011-09-19 22:53:05', 'The Gambia', 159);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Orty', 'org', '58.32.239.67', '2016-07-21 04:00:47', 'San Marino', 64);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Redsky', 'tech', '18.217.32.130', '2017-12-20 12:46:32', 'USA', 76);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Man Mobile', 'bi', '206.6.40.73', '2015-05-14 17:54:21', 'Ghana', 185);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Plalitaire', 'info', '54.93.249.6', '2017-07-11 08:55:08', 'Estonia', 72);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('ReadABook', 'com', '216.102.56.133', '2014-03-07 19:56:49', 'Iraq', 156);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Partnip', 'org', '9.183.111.125', '2011-02-23 06:56:08', 'Pakistan', 180);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Aor', 'mobi', '141.194.3.166', '2011-10-14 16:18:26', 'Lesotho', 67);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Resinagro', 'org', '133.103.89.229', '2010-01-13 15:55:25', 'Thailand', 12);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Trafor', 'com', '234.115.189.140', '2014-09-29 12:28:55', 'Bosnia and Heregovina', 141);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Koob', 'info', '212.76.103.146', '2011-06-07 00:34:41', 'Iraq', 93);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Koob', 'org', '238.16.42.167', '2010-01-05 20:35:28', 'Peru', 39);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Solaplay', 'org', '245.195.11.195', '2015-07-20 11:50:47', 'Haiti', 20);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Baywtch', 'net', '69.91.244.231', '2015-11-05 06:31:26', 'Spain', 150);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Lopping', 'ca', '100.210.248.59', '2014-11-17 11:27:37', 'Bangladesh', 82);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Lopping', 'tech', '245.209.213.201', '2017-05-12 03:32:49', 'Bahrain', 97);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Orty', 'net', '232.175.4.123', '2019-10-07 06:29:12', 'Saint Vincent and the Grenadines', 140);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Rook', 'us', '132.160.178.243', '2012-04-13 09:06:50', 'Ghana', 51);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Andes Shop', 'net', '115.190.213.84', '2014-11-21 18:19:53', 'Marshall Islands', 72);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Sist', 'edu', '117.251.248.71', '2017-02-04 09:32:15', 'Tonga', 160);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Shost', 'org', '116.152.51.146', '2016-04-16 12:50:38', 'Ghana', 73);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Fdeam', 'org', '114.43.0.92', '2018-11-19 10:34:09', 'Korea, North', 54);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Avatar Mobile', 'net', '115.210.239.86', '2016-06-23 15:11:38', 'Papua New Guinea', 170);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Tracking Mobile', 'net', '148.194.133.232', '2016-03-29 15:40:05', 'Syria', 10);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('BeReady', 'tech', '102.49.226.249', '2015-12-16 02:39:10', 'Bosnia and Heregovina', 111);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Solo Mobile', 'mobi', '150.133.242.14', '2016-11-01 08:26:34', 'Benin', 79);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Caint', 'net', '241.173.166.163', '2016-07-10 09:40:23', 'Sao Tome and Principe', 38);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Prayons', 'mobi', '204.56.108.91', '2015-11-26 15:29:01', 'Laos', 191);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('DeskGet', 'org', '182.158.235.145', '2010-08-28 05:26:00', 'Slovakia', 55);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Fdeam', 'mobi', '118.7.150.178', '2016-11-29 16:33:23', 'Kaakhstan', 88);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Paie', 'org', '245.21.103.153', '2010-09-22 17:56:57', 'Burundi', 134);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Prayons', 'org', '121.29.201.191', '2015-03-10 21:05:30', 'Canada', 175);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Shoplist', 'bi', '26.204.38.235', '2013-03-10 21:23:16', 'Bhutan', 194);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Lopping', 'mobi', '213.216.27.166', '2011-12-09 01:10:46', 'Algeria', 122);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Arty', 'tech', '236.207.165.165', '2019-10-01 16:44:04', 'Chile', 48);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Avatar Mobile', 'us', '155.10.148.111', '2013-10-25 15:35:29', 'Cyprus', 52);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Mettcal', 'com', '210.112.52.34', '2013-07-15 02:03:28', 'Tanania', 78);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Trafor', 'mobi', '69.190.236.160', '2012-01-23 12:19:34', 'Vatican City', 3);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Nime', 'info', '119.190.129.113', '2019-08-24 16:14:39', 'Swailand', 149);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('BeReady', 'org', '134.159.95.21', '2011-06-05 00:30:12', 'Cuba', 198);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Page One Shop', 'mobi', '186.248.71.249', '2017-07-26 07:32:47', 'Serbia', 186);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('OrTravel', 'org', '153.156.120.217', '2017-02-03 07:40:30', 'Mauritania', 4);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Solo Mobile', 'mobi', '39.63.103.86', '2010-11-21 19:13:27', 'Tanania', 193);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('ReadABook', 'us', '113.68.186.146', '2013-11-09 00:29:34', 'Syria', 83);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Avatar Mobile', 'mobi', '137.169.18.183', '2018-10-05 14:36:41', 'Ukraine', 136);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('BeReady', 'net', '234.53.79.144', '2019-10-26 04:22:37', 'Mali', 86);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Vrigo', 'com', '152.28.79.232', '2017-06-09 11:37:43', 'Belarus', 165);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Yola', 'com', '193.128.40.238', '2017-07-18 00:09:44', 'Marshall Islands', 9);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Redsky', 'org', '178.239.224.193', '2010-08-11 19:39:06', 'Montenegro', 38);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Solo Mobile', 'bi', '84.177.48.91', '2010-07-16 02:54:04', 'Slovenia', 94);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Yola', 'info', '9.111.68.226', '2010-06-15 14:25:32', 'Russia', 62);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Bookoread', 'mobi', '160.225.176.232', '2019-10-09 16:34:33', 'Liberia', 191);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Lopping', 'net', '208.205.181.89', '2017-04-25 13:34:13', 'Iceland', 133);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('ReadABook', 'net', '149.200.213.154', '2011-08-04 13:43:00', 'China', 122);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Solaplay', 'bi', '101.2.236.181', '2012-02-22 05:48:04', 'Uganda', 120);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Baywtch', 'edu', '239.21.108.225', '2017-12-22 22:26:56', 'Antigua and Barbuda', 17);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Sist', 'ca', '219.248.204.208', '2018-10-20 13:10:11', 'Djibouti', 108);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Andes Shop', 'bi', '164.223.82.226', '2019-08-29 14:45:57', 'Burkina Faso', 75);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('OrTravel', 'net', '36.218.74.124', '2010-07-18 17:00:18', 'Bolivia', 110);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Man Mobile', 'org', '112.2.217.62', '2017-04-25 19:22:23', 'Iceland', 60);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Arty', 'com', '171.141.29.132', '2011-06-12 07:38:28', 'Korea, North', 25);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('OrTravel', 'ca', '75.176.7.78', '2012-02-12 14:25:05', 'Vietnam', 79);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Partnip', 'com', '202.134.139.215', '2017-11-12 06:32:49', 'Panama', 88);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Yola', 'net', '166.123.253.85', '2010-04-09 08:36:18', 'Pakistan', 97);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Andes Shop', 'tech', '214.18.216.123', '2019-02-05 03:48:16', 'Turkmenistan', 55);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Solaplay', 'tech', '203.206.124.9', '2018-04-29 19:43:50', 'Cambodia', 81);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Redsky', 'us', '166.26.48.166', '2016-02-17 03:29:17', 'Tanania', 161);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Ytrap', 'org', '108.16.248.121', '2015-03-25 12:30:21', 'Malaysia', 40);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Craye', 'us', '225.148.187.127', '2019-03-31 02:51:25', 'Trinidad and Tobago', 156);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('BeReady', 'tech', '243.42.125.249', '2015-09-26 09:12:58', 'Libya', 112);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Lopping', 'mobi', '218.67.58.83', '2016-04-27 06:17:26', 'Madagascar', 20);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('MyGameNight', 'info', '100.0.141.123', '2012-11-16 13:29:37', 'Colombia', 42);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Craye', 'edu', '13.135.151.85', '2010-06-11 12:16:18', 'Lithuania', 44);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Redsky', 'edu', '221.136.134.33', '2012-06-04 08:11:50', 'Croatia', 57);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Enmeet', 'tech', '221.185.10.58', '2017-03-22 22:16:38', 'Ghana', 153);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Shost', 'ca', '175.247.116.4', '2012-09-22 10:13:10', 'Burundi', 14);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Lopping', 'edu', '11.96.39.216', '2016-12-14 15:03:44', 'Qatar', 163);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('SolSol', 'info', '129.13.66.253', '2011-05-23 22:43:05', 'Mauritius', 31);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Partnip', 'mobi', '235.45.8.242', '2011-07-26 09:24:46', 'Turkmenistan', 126);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Gniteem', 'net', '208.111.159.19', '2015-07-13 11:24:51', 'Comoros', 38);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Plalitaire', 'tech', '47.60.59.92', '2012-03-31 12:08:52', 'Bulgaria', 128);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Prayons', 'com', '162.27.179.137', '2015-03-31 15:08:51', 'Ukraine', 115);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Page One Shop', 'mobi', '94.167.96.190', '2019-08-21 13:00:43', 'Brunei', 52);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('MyGameNight', 'com', '45.13.115.150', '2012-08-24 06:43:10', 'Eritrea', 156);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Partnip', 'net', '206.223.117.210', '2019-03-18 14:53:35', 'Malawi', 144);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Trafor', 'net', '36.101.37.93', '2011-11-13 04:10:22', 'Ecuador', 176);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Rook', 'ca', '56.143.98.145', '2019-12-20 00:58:34', 'Oman', 152);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Andes Shop', 'com', '28.46.175.7', '2015-04-20 03:44:26', 'Macedonia', 154);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Partnip', 'us', '38.96.137.81', '2015-09-17 01:15:54', 'Tunisia', 20);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Lopping', 'edu', '64.84.195.15', '2012-07-15 09:27:22', 'Russia', 56);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Paie', 'edu', '129.36.2.48', '2010-01-11 20:17:26', 'Singapore', 58);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Vrigo', 'edu', '118.171.246.38', '2013-08-06 00:20:00', 'Tanania', 41);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('MyGameNight', 'us', '99.176.183.164', '2018-03-23 01:37:51', 'Switerland', 17);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Yola', 'edu', '14.19.202.154', '2011-12-22 03:21:56', 'Latvia', 60);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Enmeet', 'us', '113.79.222.112', '2013-08-10 05:51:17', 'Mongolia', 194);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Caint', 'edu', '48.166.34.12', '2017-03-24 12:20:22', 'Saint Lucia', 97);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Kulop', 'edu', '57.188.51.106', '2019-02-09 18:07:05', 'Egypt', 130);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Bookoread', 'org', '50.48.237.223', '2019-02-13 11:06:04', 'Argentina', 70);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Vrigo', 'bi', '6.80.74.91', '2014-09-21 05:11:56', 'Morocco', 87);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Bookoread', 'bi', '11.116.116.140', '2012-06-20 16:20:31', 'Tonga', 26);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Man Mobile', 'edu', '158.118.41.88', '2018-05-13 00:09:51', 'Lesotho', 9);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Orty', 'mobi', '134.193.32.222', '2017-08-20 05:45:44', 'Malta', 145);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('BeReady', 'tech', '14.141.55.144', '2012-07-04 20:41:52', 'Vanuatu', 162);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('MemoMe', 'edu', '15.218.145.51', '2012-09-14 08:51:58', 'Malawi', 184);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Fdeam', 'us', '148.120.19.52', '2012-03-02 02:29:52', 'Dominica', 81);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Aor', 'com', '203.149.217.111', '2015-11-02 11:03:41', 'El Salvador', 125);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Yola', 'net', '172.146.119.158', '2010-07-08 19:40:07', 'Iran', 23);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Trafor', 'mobi', '205.127.136.95', '2010-10-18 19:51:38', 'Bangladesh', 146);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Vrigo', 'tech', '126.111.167.144', '2016-05-20 07:04:56', 'France', 95);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Craye', 'tech', '158.225.8.203', '2019-07-12 03:17:40', 'Uruguay', 62);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('ShopFactory', 'com', '246.174.102.42', '2017-07-02 03:01:55', 'Cabo Verde', 152);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Run24', 'edu', '45.32.67.55', '2012-04-11 00:51:19', 'Malta', 150);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('MemoMe', 'edu', '208.17.238.104', '2017-11-06 16:05:10', 'Libya', 161);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Enmeet', 'bi', '233.232.48.128', '2018-10-01 13:35:50', 'Malaysia', 123);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Lopping', 'mobi', '227.21.164.147', '2016-07-01 07:51:12', 'Indonesia', 193);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Gusto Mobile', 'net', '56.158.127.114', '2010-10-03 21:36:21', 'Iran', 16);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('DeskGet', 'bi', '213.95.224.96', '2018-07-16 20:39:11', 'Kyrgystan', 69);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Plalitaire', 'ca', '20.131.190.126', '2011-08-23 08:14:55', 'Senegal', 98);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Aor', 'com', '23.40.45.208', '2019-06-07 05:03:47', 'Sierra Leone', 103);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('MemoMe', 'us', '108.126.16.7', '2018-08-03 03:14:51', 'Bosnia and Heregovina', 28);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Rook', 'bi', '49.30.109.35', '2011-02-24 08:33:20', 'Egypt', 11);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Aor', 'org', '183.216.48.50', '2012-05-16 16:33:33', 'Cech Republic', 137);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Baywtch', 'edu', '82.56.160.103', '2016-10-12 09:42:55', 'Samoa', 3);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('ShopFactory', 'com', '209.235.249.106', '2012-10-27 09:56:21', 'Australia', 15);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('DeskGet', 'edu', '246.12.150.100', '2013-12-26 18:22:29', 'Cuba', 196);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Yola', 'net', '186.40.24.175', '2015-02-06 07:11:41', 'Morocco', 59);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Rook', 'ca', '186.39.154.94', '2015-06-02 16:13:14', 'Latvia', 33);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Resinagro', 'bi', '208.83.96.250', '2012-01-24 02:49:49', 'Turkmenistan', 73);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('LilyGrate', 'tech', '78.70.7.222', '2016-12-18 13:13:39', 'Hungary', 45);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('OrTravel', 'edu', '51.4.198.89', '2012-07-05 13:41:33', 'Ubekistan', 178);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Tracking Mobile', 'us', '244.54.18.26', '2010-03-19 12:14:21', 'Vanuatu', 160);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Baywtch', 'edu', '170.90.93.77', '2019-05-03 17:30:34', 'Brunei', 191);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('MyGameNight', 'net', '86.123.18.139', '2012-02-17 02:04:24', 'Slovenia', 3);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Mettcal', 'net', '135.33.51.34', '2013-12-06 06:55:23', 'Qatar', 66);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('LilyGrate', 'edu', '50.100.160.240', '2018-01-17 06:20:58', 'Haiti', 91);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('MyGameNight', 'org', '119.179.177.88', '2017-10-06 15:02:38', 'Marshall Islands', 140);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('MyGameNight', 'com', '146.98.153.93', '2013-06-11 08:39:00', 'Nepal', 133);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Gusto Mobile', 'info', '125.33.8.30', '2018-07-01 21:13:04', 'Mongolia', 44);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('OrTravel', 'info', '154.152.169.74', '2018-10-21 00:56:29', 'Panama', 165);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Rook', 'org', '173.249.249.13', '2017-08-27 17:10:46', 'Yemen', 83);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Man Mobile', 'mobi', '159.234.248.132', '2014-04-02 16:25:20', 'Burkina Faso', 64);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('MyGameNight', 'edu', '183.94.182.195', '2019-05-02 19:38:39', 'Belarus', 8);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Resinagro', 'net', '240.44.70.155', '2016-08-25 20:54:10', 'Ghana', 12);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('OrTravel', 'ca', '15.112.4.234', '2011-05-26 00:16:21', 'Oman', 111);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Sist', 'edu', '11.104.22.127', '2014-09-09 04:49:34', 'Papua New Guinea', 56);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Ingocal', 'ca', '107.209.76.215', '2011-01-02 13:39:38', 'Barbados', 67);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('ReadABook', 'info', '213.187.67.188', '2011-03-16 01:28:22', 'Estonia', 169);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Ingocal', 'net', '199.108.108.141', '2012-01-24 01:52:45', 'Saint Lucia', 142);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Avatar Mobile', 'mobi', '183.109.244.163', '2011-10-06 15:42:41', 'Poland', 163);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('OrTravel', 'us', '235.25.208.101', '2018-07-10 04:27:33', 'Montenegro', 132);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Baywtch', 'org', '38.29.109.157', '2010-08-01 21:23:07', 'San Marino', 137);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Ytrap', 'ca', '30.213.125.41', '2016-07-29 19:54:56', 'Belarus', 79);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('ShopFactory', 'bi', '68.126.247.169', '2018-10-04 21:18:03', 'Mongolia', 196);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Avatar Mobile', 'tech', '62.27.66.197', '2016-04-04 12:46:13', 'Saudi Arabia', 95);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Shost', 'org', '180.76.113.100', '2012-07-12 02:12:44', 'Spain', 60);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Gusto Mobile', 'org', '244.188.222.79', '2012-02-20 22:57:08', 'Vatican City', 143);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Mettcal', 'us', '153.39.138.57', '2010-02-28 09:02:46', 'Oman', 0);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Andes Shop', 'org', '123.235.82.67', '2012-02-12 16:16:55', 'Malaysia', 61);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Yola', 'net', '169.121.219.31', '2011-01-08 03:36:58', 'Liechtenstein', 84);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Caint', 'mobi', '142.250.35.22', '2017-02-11 12:43:56', 'Sierra Leone', 183);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('BeReady', 'edu', '163.179.92.155', '2016-03-04 22:15:17', 'Germany', 171);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Ingocal', 'bi', '137.234.69.19', '2012-09-26 22:33:03', 'Iceland', 147);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('ReadABook', 'tech', '153.50.172.49', '2011-09-03 19:52:43', 'Cameroon', 81);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Avatar Mobile', 'com', '198.3.140.103', '2016-06-27 11:14:40', 'Sudan', 198);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('ROF', 'ca', '74.165.147.206', '2011-10-20 17:18:52', 'Nicaragua', 113);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Ytrap', 'info', '77.15.181.121', '2019-09-07 18:29:07', 'Haiti', 92);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Aor', 'ca', '108.41.226.161', '2015-02-20 00:21:35', 'Philippines', 65);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Mettcal', 'org', '72.21.100.223', '2019-05-31 13:48:12', 'Bahrain', 62);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Solo Mobile', 'bi', '200.195.185.155', '2019-11-30 09:53:48', 'Yemen', 42);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Orty', 'bi', '225.174.101.250', '2015-05-14 09:34:57', 'Botswana', 155);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Gniteem', 'com', '106.157.9.217', '2017-05-05 02:21:06', 'Malawi', 155);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Man Mobile', 'tech', '73.193.24.59', '2018-03-02 01:34:04', 'Equatorial Guinea', 41);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Trafor', 'edu', '47.212.1.152', '2019-09-04 02:56:00', 'Israel', 167);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Gniteem', 'com', '97.14.45.67', '2013-12-13 06:07:05', 'Estonia', 132);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('LilyGrate', 'edu', '78.89.140.19', '2015-05-24 02:10:12', 'Jordan', 124);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('OrTravel', 'com', '20.195.97.237', '2011-09-23 19:09:26', 'Bangladesh', 41);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Man Mobile', 'ca', '230.79.57.107', '2011-06-21 20:33:30', 'Guatemala', 112);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Aor', 'ca', '147.222.204.116', '2011-10-29 22:15:44', 'Tuvalu', 71);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Gniteem', 'us', '227.48.68.254', '2010-01-16 05:51:05', 'Tajikistan', 36);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Page One Shop', 'com', '228.194.31.186', '2015-02-19 03:40:30', 'Papua New Guinea', 0);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Gusto Mobile', 'org', '8.179.201.150', '2013-06-07 02:57:31', 'Iceland', 28);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Craye', 'com', '159.146.3.227', '2013-05-30 04:52:23', 'Equatorial Guinea', 181);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('ROF', 'com', '218.135.180.63', '2013-02-03 15:35:52', 'Estonia', 61);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Koob', 'com', '116.72.38.102', '2018-07-05 14:44:44', 'Colombia', 44);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Solo Mobile', 'edu', '32.200.210.73', '2014-05-01 21:15:07', 'Saint Vincent and the Grenadines', 178);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Solaplay', 'edu', '99.185.219.117', '2019-11-15 14:03:18', 'Kosovo', 41);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Resinagro', 'edu', '9.123.48.15', '2013-12-23 18:38:37', 'Myanmar', 45);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Run24', 'com', '214.80.197.225', '2014-07-18 19:39:33', 'Chad', 146);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Ytrap', 'edu', '197.76.55.151', '2011-12-24 18:51:54', 'Yemen', 84);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Paie', 'net', '194.51.247.86', '2018-05-13 02:58:09', 'Uruguay', 192);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Lopping', 'info', '220.44.69.195', '2012-12-21 20:50:17', 'Dominican Republic', 142);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Aor', 'com', '149.16.118.160', '2010-04-08 04:31:24', 'Seychelles', 27);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Run24', 'com', '222.82.83.116', '2011-12-01 19:51:47', 'Bolivia', 198);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Solaplay', 'org', '132.25.95.123', '2013-10-01 21:09:02', 'Thailand', 23);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('MemoMe', 'bi', '161.93.203.103', '2019-05-23 04:08:42', 'The Gambia', 85);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Shoplist', 'info', '138.99.143.158', '2016-01-09 11:09:34', 'Pakistan', 94);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Solo Mobile', 'info', '211.13.214.30', '2010-11-12 01:54:44', 'Bangladesh', 30);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('BeReady', 'ca', '12.118.95.122', '2018-02-17 00:55:05', 'Saint Kitts and Nevis', 29);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Andes Shop', 'bi', '98.138.52.109', '2011-03-30 03:49:09', 'Nigeria', 107);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Ingocal', 'ca', '91.8.191.250', '2012-09-12 03:38:22', 'Madagascar', 37);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Ingocal', 'ca', '27.175.188.84', '2011-06-15 00:03:40', 'Turkmenistan', 130);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Solaplay', 'edu', '220.126.204.102', '2014-04-14 15:07:30', 'Austria', 198);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Solo Mobile', 'com', '64.242.148.15', '2012-08-24 12:36:11', 'Malta', 165);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Sist', 'info', '109.128.158.59', '2011-04-22 20:15:41', 'Romania', 63);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Solo Mobile', 'us', '87.63.17.229', '2011-03-01 01:28:06', 'Israel', 183);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Baywtch', 'mobi', '112.253.46.142', '2017-02-04 12:27:02', 'Andorra', 107);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Koob', 'com', '11.226.6.253', '2011-05-24 09:30:54', 'Uganda', 114);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('ReadABook', 'info', '123.183.33.232', '2017-06-06 04:40:29', 'Sudan', 7);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Caint', 'edu', '182.180.169.193', '2017-06-29 01:49:47', 'Congo', 50);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Man Mobile', 'bi', '8.124.96.39', '2012-06-14 03:44:51', 'Congo', 185);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Baywtch', 'ca', '104.139.175.245', '2013-10-30 10:22:00', 'Egypt', 106);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Shost', 'us', '191.193.17.190', '2014-03-10 21:57:13', 'Ethiopia', 189);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Tracking Mobile', 'com', '212.136.25.70', '2016-07-15 21:12:46', 'Dominica', 68);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Gusto Mobile', 'ca', '101.221.242.206', '2012-12-04 19:05:29', 'Australia', 70);
INSERT INTO domains (webname, domainname, ip, datereg, countryreg, personid)
VALUES ('Vrigo', 'net', '20.0.31.91', '2017-02-18 19:26:27', 'Gabon', 165);

