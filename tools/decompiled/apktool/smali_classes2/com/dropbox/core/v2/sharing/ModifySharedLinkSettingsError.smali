.class public final Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;
.super Ljava/lang/Object;
.source "ModifySharedLinkSettingsError.java"


# static fields
.field public static final EMAIL_NOT_VERIFIED:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

.field public static final SHARED_LINK_ACCESS_DENIED:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

.field public static final SHARED_LINK_NOT_FOUND:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

.field public static final UNSUPPORTED_LINK_TYPE:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

.field private settingsErrorValue:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->SHARED_LINK_NOT_FOUND:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->withTag(Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;)Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->SHARED_LINK_NOT_FOUND:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    .line 69
    new-instance v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->SHARED_LINK_ACCESS_DENIED:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->withTag(Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;)Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->SHARED_LINK_ACCESS_DENIED:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    .line 73
    new-instance v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->UNSUPPORTED_LINK_TYPE:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->withTag(Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;)Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->UNSUPPORTED_LINK_TYPE:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    .line 81
    new-instance v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->withTag(Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;)Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->OTHER:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    .line 85
    new-instance v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->EMAIL_NOT_VERIFIED:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->withTag(Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;)Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->EMAIL_NOT_VERIFIED:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;)Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->settingsErrorValue:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    return-object v0
.end method

.method public static settingsError(Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;)Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;
    .locals 2

    .prologue
    .line 207
    if-nez p0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->SETTINGS_ERROR:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->withTagAndSettingsError(Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;)Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;)Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;-><init>()V

    .line 103
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    .line 104
    return-object v0
.end method

.method private withTagAndSettingsError(Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;)Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;-><init>()V

    .line 118
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    .line 119
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->settingsErrorValue:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    .line 120
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 254
    if-ne p1, p0, :cond_0

    .line 283
    :goto_0
    :pswitch_0
    return v1

    .line 257
    :cond_0
    if-nez p1, :cond_1

    move v1, v0

    .line 258
    goto :goto_0

    .line 260
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    if-eqz v2, :cond_5

    .line 261
    check-cast p1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    .line 262
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    if-eq v2, v3, :cond_2

    move v1, v0

    .line 263
    goto :goto_0

    .line 265
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$1;->$SwitchMap$com$dropbox$core$v2$sharing$ModifySharedLinkSettingsError$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 279
    goto :goto_0

    .line 275
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->settingsErrorValue:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->settingsErrorValue:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->settingsErrorValue:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->settingsErrorValue:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    move v1, v0

    goto :goto_0

    :cond_5
    move v1, v0

    .line 283
    goto :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSettingsErrorValue()Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->SETTINGS_ERROR:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    if-eq v0, v1, :cond_0

    .line 226
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.SETTINGS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->settingsErrorValue:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 244
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->settingsErrorValue:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 248
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 249
    return v0
.end method

.method public isEmailNotVerified()Z
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->EMAIL_NOT_VERIFIED:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOther()Z
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

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
    .line 190
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->SETTINGS_ERROR:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSharedLinkAccessDenied()Z
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->SHARED_LINK_ACCESS_DENIED:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSharedLinkNotFound()Z
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->SHARED_LINK_NOT_FOUND:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnsupportedLinkType()Z
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->UNSUPPORTED_LINK_TYPE:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->_tag:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 289
    sget-object v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 301
    sget-object v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
