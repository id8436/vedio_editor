.class public final Lcom/dropbox/core/v2/sharing/LinkPassword;
.super Ljava/lang/Object;
.source "LinkPassword.java"


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/sharing/LinkPassword;

.field public static final REMOVE_PASSWORD:Lcom/dropbox/core/v2/sharing/LinkPassword;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

.field private setPasswordValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/dropbox/core/v2/sharing/LinkPassword;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/LinkPassword;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;->REMOVE_PASSWORD:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/LinkPassword;->withTag(Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;)Lcom/dropbox/core/v2/sharing/LinkPassword;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/LinkPassword;->REMOVE_PASSWORD:Lcom/dropbox/core/v2/sharing/LinkPassword;

    .line 65
    new-instance v0, Lcom/dropbox/core/v2/sharing/LinkPassword;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/LinkPassword;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/LinkPassword;->withTag(Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;)Lcom/dropbox/core/v2/sharing/LinkPassword;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/LinkPassword;->OTHER:Lcom/dropbox/core/v2/sharing/LinkPassword;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/LinkPassword;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->setPasswordValue:Ljava/lang/String;

    return-object v0
.end method

.method public static setPassword(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/LinkPassword;
    .locals 2

    .prologue
    .line 157
    if-nez p0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/LinkPassword;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/LinkPassword;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;->SET_PASSWORD:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/LinkPassword;->withTagAndSetPassword(Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/LinkPassword;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;)Lcom/dropbox/core/v2/sharing/LinkPassword;
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/dropbox/core/v2/sharing/LinkPassword;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/LinkPassword;-><init>()V

    .line 83
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/LinkPassword;->_tag:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    .line 84
    return-object v0
.end method

.method private withTagAndSetPassword(Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/LinkPassword;
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/dropbox/core/v2/sharing/LinkPassword;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/LinkPassword;-><init>()V

    .line 98
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/LinkPassword;->_tag:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    .line 99
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/LinkPassword;->setPasswordValue:Ljava/lang/String;

    .line 100
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 203
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 226
    :cond_0
    :goto_0
    return v0

    .line 206
    :cond_1
    if-eqz p1, :cond_0

    .line 209
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/LinkPassword;

    if-eqz v2, :cond_0

    .line 210
    check-cast p1, Lcom/dropbox/core/v2/sharing/LinkPassword;

    .line 211
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->_tag:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/LinkPassword;->_tag:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    if-ne v2, v3, :cond_0

    .line 214
    sget-object v2, Lcom/dropbox/core/v2/sharing/LinkPassword$1;->$SwitchMap$com$dropbox$core$v2$sharing$LinkPassword$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->_tag:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 216
    goto :goto_0

    .line 218
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->setPasswordValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/LinkPassword;->setPasswordValue:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->setPasswordValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/LinkPassword;->setPasswordValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 220
    goto :goto_0

    .line 214
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getSetPasswordValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->_tag:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;->SET_PASSWORD:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    if-eq v0, v1, :cond_0

    .line 176
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.SET_PASSWORD, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->_tag:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->setPasswordValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 194
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->_tag:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->setPasswordValue:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 198
    return v0
.end method

.method public isOther()Z
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->_tag:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRemovePassword()Z
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->_tag:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;->REMOVE_PASSWORD:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetPassword()Z
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->_tag:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;->SET_PASSWORD:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->_tag:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 232
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkPassword$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkPassword$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/LinkPassword$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 244
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkPassword$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkPassword$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/LinkPassword$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
