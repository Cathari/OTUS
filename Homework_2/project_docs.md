##### Добавляем в модель данных дополнительные индексы и ограничения
_Расписаны только те колонки, к которым добавляли индексы и ограничения. Полная модель приведена в схеме._

* companies / Таблица, описывающая кампании рассылок
    * id - индекс (PK)
    * uuid - уникальный индекс, автоматически генерируемый uuid
    * user_id - индекс (FK)
    * state - индекс, тип ENUM ('IDLE','PAUSED','PROCESSING','COMPLETED'), отображает статус кампании
    
    CONSTRAINT `companies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE RESTRICT ON DELETE SET NULL
    
* companies_messages / Таблица для связи(многие ко многим) кампаний и текста сообщений
    * campaign_id - индекс (FK)
    * message_id - индекс (FK)
    
    CONSTRAINT `companies_messages_campaign_id_foreign` FOREIGN KEY (`campaign_id`) REFERENCES `companies` (`id`) ON UPDATE RESTRICT ON DELETE CASCADE,
    CONSTRAINT `companies_messages_message_id_foreign` FOREIGN KEY (`message_id`) REFERENCES `messages` (`id`) ON UPDATE RESTRICT ON DELETE CASCADE
      
* groups / Таблица, описывающая группы(папки) для мобильных номеров
    * id - индекс (PK)
    
* countries / Таблица, описывающая страны
    * id - индекс (PK)
    
* messages / Таблица, описывающая тексты сообщений для рассылки
    * id - индекс (PK)
    
* phone_numbers / Таблица, описывающая номера моб. телефонов
    * id - индекс (PK)
    
* phone_numbers_companies / Таблица для связи(многие ко многим) номеров и кампаний
    * phone_number_id - индекс (FK)
    * campaign_id - индекс (FK)       
    
    CONSTRAINT `phone_numbers_companies_campaign_id_foreign` FOREIGN KEY (`campaign_id`) REFERENCES `companies` (`id`) ON UPDATE RESTRICT ON DELETE CASCADE,
    CONSTRAINT `phone_numbers_companies_phone_number_id_foreign` FOREIGN KEY (`phone_number_id`) REFERENCES `phone_numbers` (`id`) ON UPDATE RESTRICT ON DELETE CASCADE

* phone_numbers_groups / Таблица для связи(многие ко многим) номеров и групп
    * phone_number_id - индекс (FK)
    * group_id - индекс (FK)
    
    CONSTRAINT `phone_numbers_groups_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON UPDATE RESTRICT ON DELETE CASCADE,
    CONSTRAINT `phone_numbers_groups_phone_number_id_foreign` FOREIGN KEY (`phone_number_id`) REFERENCES `phone_numbers` (`id`) ON UPDATE RESTRICT ON DELETE CASCADE       
 
* roles / Таблица, описывающая роли пользователя
    * id - индекс (PK)     
     
* role_permission / Таблица, описывающая привелегии роли
    * role_id - индекс (FK)     
    * permission_slug - индекс (PK)      
    
* role_user / Таблица для связи ролей и пользователей
    * role_id - индекс (FK)     
    * user_id - индекс (FK)
    
    CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON UPDATE RESTRICT ON DELETE CASCADE,
    CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE RESTRICT ON DELETE CASCADE  
    
* sms / Таблица, описывающая сформированные sms
    * id - индекс (PK)
    * uuid - уникальный индекс, автоматически генерируемый uuid
    * user_id - индекс (FK)
    * to - индекс
    * message - индекс
    
    CONSTRAINT `sms_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `taptap`.`users` (`id`) ON UPDATE RESTRICT ON DELETE SET NULL                                                                                                                                                                                                                                     