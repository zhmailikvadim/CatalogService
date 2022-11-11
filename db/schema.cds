namespace app.cat;

using {
    custom.managed,
    TextInfo
} from './common';
using {cuid} from '@sap/cds/common';

type Name                     : String(50);
type QRcode                   : String(300);
type tyIntentNavigationString : String(200);

entity Categories : cuid, managed, TextInfo {
    key ID : UUID;
}

entity Products : cuid, managed, TextInfo {
    key ID          : UUID;
        ID_category : UUID;
        price       : Decimal;
        stock       : Decimal;
        qrcode      : QRcode;
        photo_path  : QRcode;
        image       : LargeBinary;
        image_mime  : String(100);
        longitude   : String(100);
        latitude    : String(100);
        video       : LargeBinary;
        video_mime  : String(100)
}

entity Orders : cuid, managed {
    key ID           : UUID;
        ID_product   : UUID;
        stock        : Decimal;
        order_number : Decimal;
        quantity     : Integer;
        totalPrice   : Integer;
        productName  : String(100)
}
