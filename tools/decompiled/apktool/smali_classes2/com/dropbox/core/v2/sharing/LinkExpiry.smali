.class public final Lcom/dropbox/core/v2/sharing/LinkExpiry;
.super Ljava/lang/Object;
.source "LinkExpiry.java"


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/sharing/LinkExpiry;

.field public static final REMOVE_EXPIRY:Lcom/dropbox/core/v2/sharing/LinkExpiry;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/sharing/LinkExpiry$Tag;

.field private setExpiryValue:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lcom/dropbox/core/v2/sharing/LinkExpiry;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/LinkExpiry;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/LinkExpiry$Tag;->REMOVE_EXPIRY:Lcom/dropbox/core/v2/sharing/LinkExpiry$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/LinkExpiry;->withTag(Lcom/dropbox/core/v2/sharing/LinkExpiry$Tag;)Lcom/dropbox/core/v2/sharing/LinkExpiry;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/LinkExpiry;->REMOVE_EXPIRY:Lcom/dropbox/core/v2/sharing/LinkExpiry;

    .line 67
    new-instance v0, Lcom/dropbox/core/v2/sharing/LinkExpiry;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/LinkExpiry;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/LinkExpiry$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/LinkExpiry$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/LinkExpiry;->withTag(Lcom/dropbox/core/v2/sharing/LinkExpiry$Tag;)Lcom/dropbox/core/v2/sharing/LinkExpiry;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/LinkExpiry;->OTHER:Lcom/dropbox/core/v2/sharing/LinkExpiry;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/LinkExpiry;)Ljava/util/Date;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkExpiry;->setExpiryValue:Ljava/util/Date;

    return-object v0
.end method

.method public static setExpiry(Ljava/util/Date;)Lcom/dropbox/core/v2/sharing/LinkExpiry;
    .locals 2

    .prologue
    .line 159
    if-nez p0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/LinkExpiry;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/LinkExpiry;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/LinkExpiry$Tag;->SET_EXPIRY:Lcom/dropbox/core/v2/sharing/LinkExpiry$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/LinkExpiry;->withTagAndSetExpiry(Lcom/dropbox/core/v2/sharing/LinkExpiry$Tag;Ljava/util/Date;)Lcom/dropbox/core/v2/sharing/LinkExpiry;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/sharing/LinkExpiry$Tag;)Lcom/dropbox/core/v2/sharing/LinkExpiry;
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/dropbox/core/v2/sharing/LinkExpiry;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/LinkExpiry;-><init>()V

    .line 85
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/LinkExpiry;->_tag:Lcom/dropbox/core/v2/sharing/LinkExpiry$Tag;

    .line 86
    return-object v0
.end method

.method private withTagAndSetExpiry(Lcom/dropbox/core/v2/sharing/LinkExpiry$Tag;Ljava/util/Date;)Lcom/dropbox/core/v2/sharing/LinkExpiry;
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/dropbox/core/v2/sharing/LinkExpiry;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/LinkExpiry;-><init>()V

    .line 100
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/LinkExpiry;->_tag:Lcom/dropbox/core/v2/sharing/LinkExpiry$Tag;

    .line 101
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/LinkExpiry;->setExpiryValue:Ljava/util/Date;

    .line 102
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 204
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 227
    :cond_0
    :goto_0
    return v0

    .line 207
    :cond_1
    if-eqz p1, :cond_0

    .line 210
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/LinkExpiry;

    if-eqz v2, :cond_0

    .line 211
    check-cast p1, Lcom/dropbox/core/v2/sharing/LinkExpiry;

    .line 212
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/LinkExpiry;->_tag:Lcom/dropbox/core/v2/sharing/LinkExpiry$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/LinkExpiry;->_tag:Lcom/dropbox/core/v2/sharing/LinkExpiry$Tag;

    if-ne v2, v3, :cond_0

    .line 215
    sget-object v2, Lcom/dropbox/core/v2/sharing/LinkExpiry$1;->$SwitchMap$com$dropbox$core$v2$sharing$LinkExpiry$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/LinkExpiry;->_tag:Lcom/dropbox/core/v2/sharing/LinkExpiry$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/LinkExpiry$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 217
    goto :goto_0

    .line 219
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/LinkExpiry;->setExpiryValue:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/LinkExpiry;->setExpiryValue:Ljava/util/Date;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/LinkExpiry;->setExpiryValue:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/LinkExpiry;->setExpiryValue:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 221
    goto :goto_0

    .line 215
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getSetExpiryValue()Ljava/util/Date;
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkExpiry;->_tag:Lcom/dropbox/core/v2/sharing/LinkExpiry$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/LinkExpiry$Tag;->SET_EXPIRY:Lcom/dropbox/core/v2/sharing/LinkExpiry$Tag;

    if-eq v0, v1, :cond_0

    .line 177
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.SET_EXPIRY, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/LinkExpiry;->_tag:Lcom/dropbox/core/v2/sharing/LinkExpiry$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/LinkExpiry$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkExpiry;->setExpiryValue:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 195
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/LinkExpiry;->_tag:Lcom/dropbox/core/v2/sharing/LinkExpiry$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/LinkExpiry;->setExpiryValue:Ljava/util/Date;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 199
    return v0
.end method

.method public isOther()Z
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkExpiry;->_tag:Lcom/dropbox/core/v2/sharing/LinkExpiry$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/LinkExpiry$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/LinkExpiry$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRemoveExpiry()Z
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkExpiry;->_tag:Lcom/dropbox/core/v2/sharing/LinkExpiry$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/LinkExpiry$Tag;->REMOVE_EXPIRY:Lcom/dropbox/core/v2/sharing/LinkExpiry$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetExpiry()Z
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkExpiry;->_tag:Lcom/dropbox/core/v2/sharing/LinkExpiry$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/LinkExpiry$Tag;->SET_EXPIRY:Lcom/dropbox/core/v2/sharing/LinkExpiry$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/LinkExpiry$Tag;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkExpiry;->_tag:Lcom/dropbox/core/v2/sharing/LinkExpiry$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 233
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkExpiry$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkExpiry$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/LinkExpiry$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 245
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkExpiry$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkExpiry$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/LinkExpiry$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
