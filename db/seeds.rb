#encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
IntroductionQuestion.create(idQuestion:1, tag: "1",question:"Avez-vous déjà consulté un ostéopathe ? Si oui, quand pour la dernière fois ?");
IntroductionQuestion.create(idQuestion:2, tag: "2",question:"Avez-vous suivi au cours des 5 dernières années ou suivez-vous actuellement un traitement médical?");
IntroductionQuestion.create(idQuestion:3, tag: "3",question:"Avez-vous été opéré depuis votre naissance ? Si oui, précisez la raison et la date de l’intervention");
IntroductionQuestion.create(idQuestion:4, tag: "a",question:"Avez-vous du matériel resté en place (plaque, vis, port à cath, etc.)?");
IntroductionQuestion.create(idQuestion:5, tag: "4",question:"Avez-vous été hospitalisé(e) ou une hospitalisation est-elle envisagée?");
IntroductionQuestion.create(idQuestion:6, tag: "5",question:"Avez-vous été ou êtes-vous actuellement en incapacité de travail?");
IntroductionQuestion.create(idQuestion:7, tag: "6",question:"Prenez-vous actuellement des médicaments?");
IntroductionQuestion.create(idQuestion:8, tag: "7",question:"Avez-vous été victime d’accidents ?");
IntroductionQuestion.create(idQuestion:9, tag: "8",question:"Souffrez-vous actuellement ou avez-vous souffert de troubles de la santé ou avez-vous des dispositions aux maladies suivantes:");
IntroductionQuestion.create(idQuestion:10, tag: "a",question:"des organes respiratoires (par ex. asthme, bronchite chronique, emphysème, pneumonie)?");
IntroductionQuestion.create(idQuestion:11, tag: "b",question:"de l’appareil cardio-vasculaire (par ex. troubles cardiaques, tension artérielle, embolies, varices, thrombose)?");
IntroductionQuestion.create(idQuestion:12, tag: "c",question:"d’affections de l’appareil digestif (par ex. de l’oesophage, de l’estomac, de la vésicule biliaire, du foie, du pancréas, des intestins, hémorroïdes)?");
IntroductionQuestion.create(idQuestion:13, tag: "d",question:"des os, des articulations ou des muscles (par ex. rhumatisme, arthrose, ostéoporose, malformations)?");
IntroductionQuestion.create(idQuestion:14, tag: "e",question:"du dos (par ex. hernie discale, atteintes cervicales, sciatique, lombalgie)?");
IntroductionQuestion.create(idQuestion:15, tag: "f",question:"des yeux ou des oreilles?");
IntroductionQuestion.create(idQuestion:16, tag: "g",question:"des reins, des organes génitaux, de la vessie ou de la prostate (par ex. calculs, malformations, tumeurs)?");
IntroductionQuestion.create(idQuestion:17, tag: "h",question:"du système nerveux (par ex. symptômes de paralysie, épilepsie, migraines, vertiges, tumeurs)?");
IntroductionQuestion.create(idQuestion:18, tag: "i",question:"du métabolisme, du sang (par ex. diabète, goutte, anémie, leucémie, affection de la rate)?");
IntroductionQuestion.create(idQuestion:19, tag: "j",question:"maladies endocriniennes (par ex. thyroïde, surrénales, hypophyse)?");
IntroductionQuestion.create(idQuestion:20, tag: "k",question:"de la peau (par ex. allergies, eczéma, psoriasis, cancers)?");
IntroductionQuestion.create(idQuestion:21, tag: "l",question:"autres affections, malformations ou infirmités non mentionnées ci-dessus?");
IntroductionQuestion.create(idQuestion:22, tag: "9",question:"Avez-vous ou souffrez-vous d’une affection gynécologique, d’une affection des seins, de stérilité?");
IntroductionQuestion.create(idQuestion:23, tag: "10",question:"Avez-vous des enfants ? Si oui, précisez leur date de naissance et si la naissance s’est faite sans complication (césarienne, curetage etc.)");
IntroductionQuestion.create(idQuestion:24, tag: "11",question:"Etes-vous enceinte? Si oui, date de vos dernières règles ?");
IntroductionQuestion.create(idQuestion:25, tag: "12",question:"Indiquez votre taille:");
IntroductionQuestion.create(idQuestion:26, tag: "13",question:"votre poids:");
IntroductionQuestion.create(idQuestion:27, tag: "14",question:"Fumez-vous? Si oui, combien par jour?");