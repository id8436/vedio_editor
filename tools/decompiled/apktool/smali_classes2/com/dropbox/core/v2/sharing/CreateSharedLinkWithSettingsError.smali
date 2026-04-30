.class public final Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;
.super Ljava/lang/Object;
.source "CreateSharedLinkWithSettingsError.java"


# static fields
.field public static final ACCESS_DENIED:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

.field public static final EMAIL_NOT_VERIFIED:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

.field public static final SHARED_LINK_ALREADY_EXISTS:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

.field private pathValue:Lcom/dropbox/core/v2/files/LookupError;

.field private settingsErrorValue:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->EMAIL_NOT_VERIFIED:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->withTag(Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->EMAIL_NOT_VERIFIED:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    .line 60
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->SHARED_LINK_ALREADY_EXISTS:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->withTag(Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->SHARED_LINK_ALREADY_EXISTS:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    .line 64
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->ACCESS_DENIED:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->withTag(Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->ACCESS_DENIED:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

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

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;)Lcom/dropbox/core/v2/files/LookupError;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;)Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->settingsErrorValue:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    return-object v0
.end method

.method public static path(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;
    .locals 2

    .prologue
    .line 158
    if-nez p0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->PATH:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->withTagAndPath(Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    move-result-object v0

    return-object v0
.end method

.method public static settingsError(Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;
    .locals 2

    .prologue
    .line 226
    if-nez p0, :cond_0

    .line 227
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->SETTINGS_ERROR:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->withTagAndSettingsError(Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;-><init>()V

    .line 83
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    .line 84
    return-object v0
.end method

.method private withTagAndPath(Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;-><init>()V

    .line 97
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    .line 98
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    .line 99
    return-object v0
.end method

.method private withTagAndSettingsError(Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;-><init>()V

    .line 113
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    .line 114
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->settingsErrorValue:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    .line 115
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 273
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 300
    :cond_0
    :goto_0
    return v0

    .line 276
    :cond_1
    if-eqz p1, :cond_0

    .line 279
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    if-eqz v2, :cond_0

    .line 280
    check-cast p1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    .line 281
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    if-ne v2, v3, :cond_0

    .line 284
    sget-object v2, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$1;->$SwitchMap$com$dropbox$core$v2$sharing$CreateSharedLinkWithSettingsError$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 286
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/LookupError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 288
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 290
    goto :goto_0

    .line 292
    :pswitch_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->settingsErrorValue:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->settingsErrorValue:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->settingsErrorValue:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->settingsErrorValue:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 294
    goto :goto_0

    .line 284
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getPathValue()Lcom/dropbox/core/v2/files/LookupError;
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->PATH:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    if-eq v0, v1, :cond_0

    .line 174
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method public getSettingsErrorValue()Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;
    .locals 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->SETTINGS_ERROR:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    if-eq v0, v1, :cond_0

    .line 245
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.SETTINGS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->settingsErrorValue:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 263
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->settingsErrorValue:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 268
    return v0
.end method

.method public isAccessDenied()Z
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->ACCESS_DENIED:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmailNotVerified()Z
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->EMAIL_NOT_VERIFIED:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPath()Z
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->PATH:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSettingsError()Z
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->SETTINGS_ERROR:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSharedLinkAlreadyExists()Z
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->SHARED_LINK_ALREADY_EXISTS:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 306
    sget-object v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 318
    sget-object v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
