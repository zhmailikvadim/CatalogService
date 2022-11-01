namespace app.cat;

using {
    custom.managed,
    TextInfo
} from './common';
using {cuid} from '@sap/cds/common';

type Name : String(50);

type QRcode : String(300);
type tyIntentNavigationString : String(200);

entity Kinds : cuid, managed, TextInfo {
    key ID          : UUID;

        to_children : Association to many Models
                          on to_children.ID_parent = $self;
};

entity Models : cuid, managed, TextInfo {
    key ID                   : UUID;
        ID_parent            : Association to Kinds;
        to_children          : Association to many Components
                                   on to_children.ID_parent = $self;
};

entity Components : cuid, managed, TextInfo {
    key ID          : UUID;
        ID_parent   : Association to Models;
        to_children : Association to many Adapters
                          on to_children.ID_parent = $self
};

entity Adapters : cuid, managed, TextInfo {
    key ID        : UUID;
        ID_parent : Association to Components;
}

entity Categories : cuid, managed, TextInfo {
    key ID                  : UUID; }

entity Products : cuid, managed,TextInfo {
    key ID : UUID;
    ID_category : UUID;
    price  : Decimal;
    stock  : Decimal;
    qrcode : QRcode;
    photo_path : QRcode;
    image : LargeBinary @Core.MediaType: 'image/png';
}

entity Orders : cuid, managed {
    key ID        : UUID;
        ID_product : UUID;
        stock  : Decimal;
        order_number  : Decimal;
}
