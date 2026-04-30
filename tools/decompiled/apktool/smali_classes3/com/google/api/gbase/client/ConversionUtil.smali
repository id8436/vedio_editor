.class Lcom/google/api/gbase/client/ConversionUtil;
.super Ljava/lang/Object;
.source "ConversionUtil.java"


# static fields
.field private static final LATITUDE_ELEMENT_NAME:Ljava/lang/String; = "latitude"

.field private static final LONGITUDE_ELEMENT_NAME:Ljava/lang/String; = "longitude"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    return-void
.end method

.method private static beforeSpace(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createAttribute(Ljava/lang/String;Lcom/google/api/gbase/client/DateTimeRange;)Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .locals 3

    .prologue
    .line 187
    new-instance v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    sget-object v1, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->DATE_TIME_RANGE:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-virtual {p1}, Lcom/google/api/gbase/client/DateTimeRange;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createAttribute(Ljava/lang/String;Lcom/google/api/gbase/client/Group;)Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .locals 5

    .prologue
    .line 239
    new-instance v1, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    sget-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->GROUP:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-direct {v1, p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)V

    .line 240
    invoke-virtual {p1}, Lcom/google/api/gbase/client/Group;->getAllSubAttributes()Lcom/google/common/collect/Multimap;

    move-result-object v0

    .line 241
    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 242
    invoke-virtual {v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getType()Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    move-result-object v3

    .line 243
    sget-object v4, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->GROUP:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-virtual {v4, v3}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->GROUP:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-virtual {v3}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->getSupertype()Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->hasValue()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->hasSubElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    :cond_1
    invoke-virtual {v1, v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->addSubAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;)V

    goto :goto_0

    .line 249
    :cond_2
    return-object v1
.end method

.method public static createAttribute(Ljava/lang/String;Lcom/google/api/gbase/client/Location;)Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .locals 3

    .prologue
    .line 475
    new-instance v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    sget-object v1, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->LOCATION:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-direct {v0, p0, v1}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)V

    .line 477
    invoke-virtual {p1}, Lcom/google/api/gbase/client/Location;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->setValue(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p1}, Lcom/google/api/gbase/client/Location;->hasCoordinates()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    const-string/jumbo v1, "latitude"

    invoke-virtual {p1}, Lcom/google/api/gbase/client/Location;->getLatitude()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->setSubElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string/jumbo v1, "longitude"

    invoke-virtual {p1}, Lcom/google/api/gbase/client/Location;->getLongitude()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->setSubElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    :cond_0
    return-object v0
.end method

.method public static createAttribute(Ljava/lang/String;Lcom/google/api/gbase/client/Shipping;)Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 330
    new-instance v1, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    sget-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->SHIPPING:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-direct {v1, p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)V

    .line 333
    invoke-virtual {p1}, Lcom/google/api/gbase/client/Shipping;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    new-instance v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    sget-object v2, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->Country:Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

    invoke-virtual {v2}, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->getAttrName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/api/gbase/client/Shipping;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v5, v3}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)V

    .line 336
    invoke-virtual {v1, v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->addSubAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;)V

    .line 338
    :cond_0
    invoke-virtual {p1}, Lcom/google/api/gbase/client/Shipping;->getRegions()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 339
    new-instance v3, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    sget-object v4, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->Region:Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

    invoke-virtual {v4}, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->getAttrName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v5, v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)V

    .line 341
    invoke-virtual {v1, v3}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->addSubAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;)V

    goto :goto_0

    .line 343
    :cond_1
    invoke-virtual {p1}, Lcom/google/api/gbase/client/Shipping;->getService()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 344
    new-instance v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    sget-object v2, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->Service:Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

    invoke-virtual {v2}, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->getAttrName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/api/gbase/client/Shipping;->getService()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v5, v3}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)V

    .line 346
    invoke-virtual {v1, v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->addSubAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;)V

    .line 349
    :cond_2
    invoke-virtual {p1}, Lcom/google/api/gbase/client/Shipping;->getPrice()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-virtual {p1}, Lcom/google/api/gbase/client/Shipping;->getCurrency()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 351
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/api/gbase/client/Shipping;->getCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    :cond_3
    new-instance v2, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    sget-object v3, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->Price:Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

    invoke-virtual {v3}, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->getAttrName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v5, v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)V

    .line 355
    invoke-virtual {v1, v2}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->addSubAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;)V

    .line 356
    return-object v1
.end method

.method public static createAttribute(Ljava/lang/String;Lcom/google/api/gbase/client/Tax;)Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 431
    new-instance v1, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    sget-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->TAX:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-direct {v1, p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)V

    .line 433
    invoke-virtual {p1}, Lcom/google/api/gbase/client/Tax;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 434
    new-instance v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    sget-object v2, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->Country:Lcom/google/api/gbase/client/ConversionUtil$TaxField;

    invoke-virtual {v2}, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->getAttrName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/api/gbase/client/Tax;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v5, v3}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)V

    .line 435
    invoke-virtual {v1, v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->addSubAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;)V

    .line 437
    :cond_0
    invoke-virtual {p1}, Lcom/google/api/gbase/client/Tax;->getRegions()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 438
    new-instance v3, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    sget-object v4, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->Region:Lcom/google/api/gbase/client/ConversionUtil$TaxField;

    invoke-virtual {v4}, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->getAttrName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v5, v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)V

    .line 439
    invoke-virtual {v1, v3}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->addSubAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;)V

    goto :goto_0

    .line 441
    :cond_1
    new-instance v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    sget-object v2, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->Rate:Lcom/google/api/gbase/client/ConversionUtil$TaxField;

    invoke-virtual {v2}, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->getAttrName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/api/gbase/client/Tax;->getRate()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v5, v3}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)V

    .line 443
    invoke-virtual {v1, v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->addSubAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;)V

    .line 444
    invoke-virtual {p1}, Lcom/google/api/gbase/client/Tax;->getTaxShip()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 445
    new-instance v2, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    sget-object v0, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->TaxShip:Lcom/google/api/gbase/client/ConversionUtil$TaxField;

    invoke-virtual {v0}, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->getAttrName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/api/gbase/client/Tax;->getTaxShip()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "true"

    :goto_1
    invoke-direct {v2, v3, v5, v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)V

    .line 447
    invoke-virtual {v1, v2}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->addSubAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;)V

    .line 449
    :cond_2
    return-object v1

    .line 445
    :cond_3
    const-string/jumbo v0, "false"

    goto :goto_1
.end method

.method public static extractDateTimeRange(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/DateTimeRange;
    .locals 3

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getValueAsString()Ljava/lang/String;

    move-result-object v1

    .line 204
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 205
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 209
    new-instance v0, Lcom/google/api/gbase/client/DateTimeRange;

    invoke-static {v1}, Lcom/google/api/gbase/client/ConversionUtil;->toDateOrDateTime(Ljava/lang/String;)Lcom/google/gdata/data/DateTime;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/api/gbase/client/DateTimeRange;-><init>(Lcom/google/gdata/data/DateTime;)V

    .line 213
    :goto_0
    return-object v0

    .line 211
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 212
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 213
    new-instance v0, Lcom/google/api/gbase/client/DateTimeRange;

    invoke-static {v2}, Lcom/google/api/gbase/client/ConversionUtil;->toDateOrDateTime(Ljava/lang/String;)Lcom/google/gdata/data/DateTime;

    move-result-object v2

    invoke-static {v1}, Lcom/google/api/gbase/client/ConversionUtil;->toDateOrDateTime(Ljava/lang/String;)Lcom/google/gdata/data/DateTime;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/google/api/gbase/client/DateTimeRange;-><init>(Lcom/google/gdata/data/DateTime;Lcom/google/gdata/data/DateTime;)V

    goto :goto_0
.end method

.method public static extractGroup(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/Group;
    .locals 2

    .prologue
    .line 225
    new-instance v0, Lcom/google/api/gbase/client/Group;

    invoke-virtual {p0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getSubAttributes()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/api/gbase/client/Group;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static extractLocation(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/Location;
    .locals 3

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    .line 462
    new-instance v1, Lcom/google/api/gbase/client/Location;

    invoke-direct {v1, v0}, Lcom/google/api/gbase/client/Location;-><init>(Ljava/lang/String;)V

    .line 464
    const-string/jumbo v0, "latitude"

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getSubElementValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 465
    const-string/jumbo v2, "longitude"

    invoke-virtual {p0, v2}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getSubElementValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 466
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 467
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/api/gbase/client/Location;->setLatitude(F)V

    .line 468
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/api/gbase/client/Location;->setLongitude(F)V

    .line 470
    :cond_0
    return-object v1
.end method

.method public static extractNumber(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Ljava/lang/Number;
    .locals 2

    .prologue
    .line 495
    if-nez p0, :cond_0

    .line 496
    const/4 v0, 0x0

    .line 505
    :goto_0
    return-object v0

    .line 502
    :cond_0
    sget-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->FLOAT:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-virtual {p0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getAttributeId()Lcom/google/api/gbase/client/GoogleBaseAttributeId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/gbase/client/GoogleBaseAttributeId;->getType()Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    invoke-virtual {p0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/gbase/client/ConversionUtil;->toFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 505
    :cond_1
    invoke-virtual {p0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/gbase/client/ConversionUtil;->toInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public static extractNumberUnit(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/NumberUnit;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/gbase/client/GoogleBaseAttribute;",
            ")",
            "Lcom/google/api/gbase/client/NumberUnit",
            "<+",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 521
    if-nez p0, :cond_0

    .line 522
    const/4 v0, 0x0

    .line 528
    :goto_0
    return-object v0

    .line 525
    :cond_0
    sget-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->INT_UNIT:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-virtual {p0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getAttributeId()Lcom/google/api/gbase/client/GoogleBaseAttributeId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/gbase/client/GoogleBaseAttributeId;->getType()Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    invoke-virtual {p0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/gbase/client/ConversionUtil;->toIntUnit(Ljava/lang/String;)Lcom/google/api/gbase/client/NumberUnit;

    move-result-object v0

    goto :goto_0

    .line 528
    :cond_1
    invoke-virtual {p0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/gbase/client/ConversionUtil;->toFloatUnit(Ljava/lang/String;)Lcom/google/api/gbase/client/NumberUnit;

    move-result-object v0

    goto :goto_0
.end method

.method public static extractShipping(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/Shipping;
    .locals 1

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->hasSubAttributes()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-static {p0}, Lcom/google/api/gbase/client/ConversionUtil;->extractShippingFromAttributes(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/Shipping;

    move-result-object v0

    .line 264
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/api/gbase/client/ConversionUtil;->extractShippingFromElements(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/Shipping;

    move-result-object v0

    goto :goto_0
.end method

.method private static extractShippingFromAttributes(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/Shipping;
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 269
    .line 271
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 273
    invoke-virtual {p0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getSubAttributes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v4

    move-object v1, v4

    move-object v5, v4

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 274
    invoke-virtual {v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getName()Ljava/lang/String;

    move-result-object v7

    .line 275
    sget-object v8, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->Country:Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

    invoke-virtual {v8}, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->getAttrName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 276
    invoke-virtual {v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getValueAsString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v5

    :goto_1
    move-object v5, v0

    .line 292
    goto :goto_0

    .line 277
    :cond_0
    sget-object v8, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->Region:Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

    invoke-virtual {v8}, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->getAttrName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 278
    invoke-virtual {v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v0, v5

    goto :goto_1

    .line 279
    :cond_1
    sget-object v8, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->Price:Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

    invoke-virtual {v8}, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->getAttrName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 280
    invoke-virtual {v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getValueAsString()Ljava/lang/String;

    move-result-object v5

    .line 282
    :try_start_0
    invoke-static {v5}, Lcom/google/api/gbase/client/ConversionUtil;->toFloatUnit(Ljava/lang/String;)Lcom/google/api/gbase/client/NumberUnit;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 283
    :catch_0
    move-exception v0

    .line 284
    new-instance v0, Lcom/google/api/gbase/client/NumberUnit;

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v0, v5, v4}, Lcom/google/api/gbase/client/NumberUnit;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    goto :goto_1

    .line 286
    :cond_2
    sget-object v3, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->Service:Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

    invoke-virtual {v3}, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->getAttrName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 287
    invoke-virtual {v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getValueAsString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v5

    goto :goto_1

    .line 289
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sub-attribute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not supported in Shipping."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_4
    if-nez v5, :cond_5

    .line 294
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "missing \'price\' element in shipping attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_5
    new-instance v0, Lcom/google/api/gbase/client/Shipping;

    invoke-virtual {v5}, Lcom/google/api/gbase/client/NumberUnit;->getValue()Ljava/lang/Number;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v5}, Lcom/google/api/gbase/client/NumberUnit;->getUnit()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/api/gbase/client/Shipping;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;FLjava/lang/String;)V

    return-object v0
.end method

.method private static extractShippingFromElements(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/Shipping;
    .locals 6

    .prologue
    .line 302
    sget-object v0, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->Country:Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

    invoke-virtual {v0}, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->getElemName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getSubElementValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 303
    sget-object v0, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->Region:Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

    invoke-virtual {v0}, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->getElemName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getSubElementValues(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    .line 304
    sget-object v0, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->Price:Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

    invoke-virtual {v0}, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->getElemName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getSubElementValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 305
    sget-object v0, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->Service:Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

    invoke-virtual {v0}, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->getElemName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getSubElementValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 306
    if-nez v4, :cond_0

    .line 307
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "missing \'price\' element in shipping attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_0
    :try_start_0
    invoke-static {v4}, Lcom/google/api/gbase/client/ConversionUtil;->toFloatUnit(Ljava/lang/String;)Lcom/google/api/gbase/client/NumberUnit;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v5, v0

    .line 316
    :goto_0
    new-instance v0, Lcom/google/api/gbase/client/Shipping;

    invoke-virtual {v5}, Lcom/google/api/gbase/client/NumberUnit;->getValue()Ljava/lang/Number;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v5}, Lcom/google/api/gbase/client/NumberUnit;->getUnit()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/api/gbase/client/Shipping;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;FLjava/lang/String;)V

    return-object v0

    .line 313
    :catch_0
    move-exception v0

    .line 314
    new-instance v0, Lcom/google/api/gbase/client/NumberUnit;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Lcom/google/api/gbase/client/NumberUnit;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    move-object v5, v0

    goto :goto_0
.end method

.method public static extractTax(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/Tax;
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->hasSubAttributes()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    invoke-static {p0}, Lcom/google/api/gbase/client/ConversionUtil;->extractTaxFromAttributes(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/Tax;

    move-result-object v0

    .line 371
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/api/gbase/client/ConversionUtil;->extractTaxFromElements(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/Tax;

    move-result-object v0

    goto :goto_0
.end method

.method private static extractTaxFromAttributes(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/Tax;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 376
    .line 378
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 380
    invoke-virtual {p0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getSubAttributes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v1

    move-object v3, v1

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 381
    invoke-virtual {v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getName()Ljava/lang/String;

    move-result-object v6

    .line 382
    sget-object v7, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->Country:Lcom/google/api/gbase/client/ConversionUtil$TaxField;

    invoke-virtual {v7}, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->getAttrName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 383
    invoke-virtual {v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v3

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    :goto_1
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 396
    goto :goto_0

    .line 384
    :cond_0
    sget-object v7, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->Region:Lcom/google/api/gbase/client/ConversionUtil$TaxField;

    invoke-virtual {v7}, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->getAttrName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 385
    invoke-virtual {v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_1

    .line 386
    :cond_1
    sget-object v7, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->Rate:Lcom/google/api/gbase/client/ConversionUtil$TaxField;

    invoke-virtual {v7}, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->getAttrName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 387
    invoke-virtual {v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    move-object v8, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_1

    .line 388
    :cond_2
    sget-object v7, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->TaxShip:Lcom/google/api/gbase/client/ConversionUtil$TaxField;

    invoke-virtual {v7}, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->getAttrName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 389
    invoke-virtual {v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    .line 390
    if-eqz v0, :cond_6

    .line 391
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    :goto_2
    move-object v1, v2

    move-object v2, v3

    .line 393
    goto :goto_1

    .line 394
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sub-attribute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not supported in Tax."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_4
    invoke-static {v3}, Lcom/google/gdata/util/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 398
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "missing \'rate\' element in tax attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 402
    new-instance v3, Lcom/google/api/gbase/client/Tax;

    invoke-direct {v3, v2, v4, v0, v1}, Lcom/google/api/gbase/client/Tax;-><init>(Ljava/lang/String;Ljava/util/Collection;FLjava/lang/Boolean;)V

    return-object v3

    :cond_6
    move-object v0, v1

    goto :goto_2
.end method

.method private static extractTaxFromElements(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/Tax;
    .locals 5

    .prologue
    .line 406
    sget-object v0, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->Country:Lcom/google/api/gbase/client/ConversionUtil$TaxField;

    invoke-virtual {v0}, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->getElemName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getSubElementValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 407
    sget-object v0, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->Region:Lcom/google/api/gbase/client/ConversionUtil$TaxField;

    invoke-virtual {v0}, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->getElemName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getSubElementValues(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    .line 408
    sget-object v0, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->Rate:Lcom/google/api/gbase/client/ConversionUtil$TaxField;

    invoke-virtual {v0}, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->getElemName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getSubElementValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    if-nez v0, :cond_0

    .line 410
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "missing \'rate\' element in tax attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 414
    sget-object v0, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->TaxShip:Lcom/google/api/gbase/client/ConversionUtil$TaxField;

    invoke-virtual {v0}, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->getElemName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getSubElementValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 415
    const/4 v0, 0x0

    .line 416
    if-eqz v4, :cond_1

    .line 417
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 419
    :cond_1
    new-instance v4, Lcom/google/api/gbase/client/Tax;

    invoke-direct {v4, v1, v2, v3, v0}, Lcom/google/api/gbase/client/Tax;-><init>(Ljava/lang/String;Ljava/util/Collection;FLjava/lang/Boolean;)V

    return-object v4
.end method

.method private static findFirstSpace(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 169
    const-string/jumbo v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 170
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "missing unit in \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_1
    return v0
.end method

.method private static parseUnit(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static toBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 112
    if-nez p0, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p0}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static toDateOrDateTime(Ljava/lang/String;)Lcom/google/gdata/data/DateTime;
    .locals 1

    .prologue
    .line 120
    if-nez p0, :cond_0

    .line 121
    const/4 v0, 0x0

    .line 123
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/gdata/data/DateTime;->parseDateTimeChoice(Ljava/lang/String;)Lcom/google/gdata/data/DateTime;

    move-result-object v0

    goto :goto_0
.end method

.method static toFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1

    .prologue
    .line 96
    if-nez p0, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 99
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p0}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static toFloatUnit(Ljava/lang/String;)Lcom/google/api/gbase/client/NumberUnit;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/api/gbase/client/NumberUnit",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    if-nez p0, :cond_0

    .line 152
    const/4 v0, 0x0

    .line 156
    :goto_0
    return-object v0

    .line 154
    :cond_0
    invoke-static {p0}, Lcom/google/api/gbase/client/ConversionUtil;->findFirstSpace(Ljava/lang/String;)I

    move-result v1

    .line 155
    invoke-static {p0, v1}, Lcom/google/api/gbase/client/ConversionUtil;->beforeSpace(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 156
    new-instance v0, Lcom/google/api/gbase/client/NumberUnit;

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, v2}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/google/api/gbase/client/ConversionUtil;->parseUnit(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/google/api/gbase/client/NumberUnit;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static toIntUnit(Ljava/lang/String;)Lcom/google/api/gbase/client/NumberUnit;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/api/gbase/client/NumberUnit",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    if-nez p0, :cond_0

    .line 135
    const/4 v0, 0x0

    .line 139
    :goto_0
    return-object v0

    .line 137
    :cond_0
    invoke-static {p0}, Lcom/google/api/gbase/client/ConversionUtil;->findFirstSpace(Ljava/lang/String;)I

    move-result v1

    .line 138
    invoke-static {p0, v1}, Lcom/google/api/gbase/client/ConversionUtil;->beforeSpace(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 139
    new-instance v0, Lcom/google/api/gbase/client/NumberUnit;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/google/api/gbase/client/ConversionUtil;->parseUnit(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/google/api/gbase/client/NumberUnit;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static toInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 104
    if-nez p0, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 107
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
