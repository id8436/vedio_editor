.class Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "CreateSharedLinkWithSettingsError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 325
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 369
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 370
    const/4 v1, 0x1

    .line 371
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 379
    :goto_0
    if-nez v0, :cond_1

    .line 380
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_0
    const/4 v1, 0x0

    .line 376
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 377
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 382
    :cond_1
    const-string/jumbo v2, "path"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 384
    const-string/jumbo v0, "path"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 385
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v0

    .line 386
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->path(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    move-result-object v0

    .line 406
    :goto_1
    if-nez v1, :cond_2

    .line 407
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 408
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 410
    :cond_2
    return-object v0

    .line 388
    :cond_3
    const-string/jumbo v2, "email_not_verified"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 389
    sget-object v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->EMAIL_NOT_VERIFIED:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    goto :goto_1

    .line 391
    :cond_4
    const-string/jumbo v2, "shared_link_already_exists"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 392
    sget-object v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->SHARED_LINK_ALREADY_EXISTS:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    goto :goto_1

    .line 394
    :cond_5
    const-string/jumbo v2, "settings_error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 396
    const-string/jumbo v0, "settings_error"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 397
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    move-result-object v0

    .line 398
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->settingsError(Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    move-result-object v0

    goto :goto_1

    .line 400
    :cond_6
    const-string/jumbo v2, "access_denied"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 401
    sget-object v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->ACCESS_DENIED:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    goto :goto_1

    .line 404
    :cond_7
    new-instance v1, Lcom/d/a/a/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 324
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 329
    sget-object v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$1;->$SwitchMap$com$dropbox$core$v2$sharing$CreateSharedLinkWithSettingsError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->tag()Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 359
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->tag()Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 332
    const-string/jumbo v0, "path"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 333
    const-string/jumbo v0, "path"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 334
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->access$000(Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->serialize(Lcom/dropbox/core/v2/files/LookupError;Lcom/d/a/a/g;)V

    .line 335
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 362
    :goto_0
    return-void

    .line 339
    :pswitch_1
    const-string/jumbo v0, "email_not_verified"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :pswitch_2
    const-string/jumbo v0, "shared_link_already_exists"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 347
    :pswitch_3
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 348
    const-string/jumbo v0, "settings_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 349
    const-string/jumbo v0, "settings_error"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 350
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;->access$100(Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;)Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;Lcom/d/a/a/g;)V

    .line 351
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 355
    :pswitch_4
    const-string/jumbo v0, "access_denied"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 324
    check-cast p1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;Lcom/d/a/a/g;)V

    return-void
.end method
