.class public Lcom/google/gdata/data/contacts/Website;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "Website.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "website"
    nsAlias = "gContact"
    nsUri = "http://schemas.google.com/contact/2008"
.end annotation


# static fields
.field private static final HREF:Ljava/lang/String; = "href"

.field private static final LABEL:Ljava/lang/String; = "label"

.field private static final PRIMARY:Ljava/lang/String; = "primary"

.field private static final REL:Ljava/lang/String; = "rel"

.field private static final REL_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue",
            "<",
            "Lcom/google/gdata/data/contacts/Website$Rel;",
            ">;"
        }
    .end annotation
.end field

.field static final XML_NAME:Ljava/lang/String; = "website"


# instance fields
.field private href:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private primary:Ljava/lang/Boolean;

.field private rel:Lcom/google/gdata/data/contacts/Website$Rel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/google/gdata/data/contacts/Website$1;

    invoke-direct {v0}, Lcom/google/gdata/data/contacts/Website$1;-><init>()V

    sput-object v0, Lcom/google/gdata/data/contacts/Website;->REL_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/google/gdata/data/contacts/Website;->href:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/google/gdata/data/contacts/Website;->label:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/google/gdata/data/contacts/Website;->primary:Ljava/lang/Boolean;

    .line 69
    iput-object v0, p0, Lcom/google/gdata/data/contacts/Website;->rel:Lcom/google/gdata/data/contacts/Website$Rel;

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/google/gdata/data/contacts/Website$Rel;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/google/gdata/data/contacts/Website;->href:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/google/gdata/data/contacts/Website;->label:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/google/gdata/data/contacts/Website;->primary:Ljava/lang/Boolean;

    .line 69
    iput-object v0, p0, Lcom/google/gdata/data/contacts/Website;->rel:Lcom/google/gdata/data/contacts/Website$Rel;

    .line 129
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/Website;->setHref(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/contacts/Website;->setLabel(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0, p3}, Lcom/google/gdata/data/contacts/Website;->setPrimary(Ljava/lang/Boolean;)V

    .line 132
    invoke-virtual {p0, p4}, Lcom/google/gdata/data/contacts/Website;->setRel(Lcom/google/gdata/data/contacts/Website$Rel;)V

    .line 133
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/Website;->setImmutable(Z)V

    .line 134
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 1

    .prologue
    .line 265
    const-class v0, Lcom/google/gdata/data/contacts/Website;

    invoke-static {v0}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 267
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 268
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 269
    return-object v0
.end method


# virtual methods
.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 283
    const-string/jumbo v0, "href"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/contacts/Website;->href:Ljava/lang/String;

    .line 284
    const-string/jumbo v0, "label"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/contacts/Website;->label:Ljava/lang/String;

    .line 285
    const-string/jumbo v0, "primary"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/contacts/Website;->primary:Ljava/lang/Boolean;

    .line 286
    const-string/jumbo v1, "rel"

    const-class v3, Lcom/google/gdata/data/contacts/Website$Rel;

    const/4 v4, 0x0

    sget-object v5, Lcom/google/gdata/data/contacts/Website;->REL_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/AttributeHelper;->consumeEnum(Ljava/lang/String;ZLjava/lang/Class;Ljava/lang/Enum;Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/contacts/Website$Rel;

    iput-object v0, p0, Lcom/google/gdata/data/contacts/Website;->rel:Lcom/google/gdata/data/contacts/Website$Rel;

    .line 288
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 292
    if-ne p0, p1, :cond_1

    .line 299
    :cond_0
    :goto_0
    return v0

    .line 295
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/Website;->sameClassAs(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 296
    goto :goto_0

    .line 298
    :cond_2
    check-cast p1, Lcom/google/gdata/data/contacts/Website;

    .line 299
    iget-object v2, p0, Lcom/google/gdata/data/contacts/Website;->href:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/gdata/data/contacts/Website;->href:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/gdata/data/contacts/Website;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/gdata/data/contacts/Website;->label:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/gdata/data/contacts/Website;->label:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/gdata/data/contacts/Website;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/gdata/data/contacts/Website;->primary:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/gdata/data/contacts/Website;->primary:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcom/google/gdata/data/contacts/Website;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/gdata/data/contacts/Website;->rel:Lcom/google/gdata/data/contacts/Website$Rel;

    iget-object v3, p1, Lcom/google/gdata/data/contacts/Website;->rel:Lcom/google/gdata/data/contacts/Website$Rel;

    invoke-static {v2, v3}, Lcom/google/gdata/data/contacts/Website;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/gdata/data/contacts/Website;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/gdata/data/contacts/Website;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimary()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/gdata/data/contacts/Website;->primary:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRel()Lcom/google/gdata/data/contacts/Website$Rel;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/gdata/data/contacts/Website;->rel:Lcom/google/gdata/data/contacts/Website$Rel;

    return-object v0
.end method

.method public hasHref()Z
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/Website;->getHref()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLabel()Z
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/Website;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrimary()Z
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/Website;->getPrimary()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRel()Z
    .locals 1

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/Website;->getRel()Lcom/google/gdata/data/contacts/Website$Rel;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 307
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 308
    iget-object v1, p0, Lcom/google/gdata/data/contacts/Website;->href:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 309
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/google/gdata/data/contacts/Website;->href:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 311
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/contacts/Website;->label:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 312
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/google/gdata/data/contacts/Website;->label:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 314
    :cond_1
    iget-object v1, p0, Lcom/google/gdata/data/contacts/Website;->primary:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 315
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/google/gdata/data/contacts/Website;->primary:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 317
    :cond_2
    iget-object v1, p0, Lcom/google/gdata/data/contacts/Website;->rel:Lcom/google/gdata/data/contacts/Website$Rel;

    if-eqz v1, :cond_3

    .line 318
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/google/gdata/data/contacts/Website;->rel:Lcom/google/gdata/data/contacts/Website$Rel;

    invoke-virtual {v1}, Lcom/google/gdata/data/contacts/Website$Rel;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 320
    :cond_3
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 3

    .prologue
    .line 274
    const-string/jumbo v0, "href"

    iget-object v1, p0, Lcom/google/gdata/data/contacts/Website;->href:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string/jumbo v0, "label"

    iget-object v1, p0, Lcom/google/gdata/data/contacts/Website;->label:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string/jumbo v0, "primary"

    iget-object v1, p0, Lcom/google/gdata/data/contacts/Website;->primary:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 277
    const-string/jumbo v0, "rel"

    iget-object v1, p0, Lcom/google/gdata/data/contacts/Website;->rel:Lcom/google/gdata/data/contacts/Website$Rel;

    sget-object v2, Lcom/google/gdata/data/contacts/Website;->REL_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Enum;Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;)V

    .line 278
    return-void
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/Website;->throwExceptionIfImmutable()V

    .line 152
    iput-object p1, p0, Lcom/google/gdata/data/contacts/Website;->href:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/Website;->throwExceptionIfImmutable()V

    .line 180
    iput-object p1, p0, Lcom/google/gdata/data/contacts/Website;->label:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setPrimary(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/Website;->throwExceptionIfImmutable()V

    .line 208
    iput-object p1, p0, Lcom/google/gdata/data/contacts/Website;->primary:Ljava/lang/Boolean;

    .line 209
    return-void
.end method

.method public setRel(Lcom/google/gdata/data/contacts/Website$Rel;)V
    .locals 0

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/Website;->throwExceptionIfImmutable()V

    .line 236
    iput-object p1, p0, Lcom/google/gdata/data/contacts/Website;->rel:Lcom/google/gdata/data/contacts/Website$Rel;

    .line 237
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Website href="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/contacts/Website;->href:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/contacts/Website;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " primary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/contacts/Website;->primary:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " rel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/contacts/Website;->rel:Lcom/google/gdata/data/contacts/Website$Rel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validate()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/gdata/data/contacts/Website;->href:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 251
    const-string/jumbo v0, "href"

    invoke-static {v0}, Lcom/google/gdata/data/contacts/Website;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 253
    :cond_0
    return-void
.end method
