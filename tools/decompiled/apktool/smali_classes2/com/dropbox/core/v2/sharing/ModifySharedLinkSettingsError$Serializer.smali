.class Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "ModifySharedLinkSettingsError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 308
    new-instance v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 352
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 353
    const/4 v1, 0x1

    .line 354
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 355
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 362
    :goto_0
    if-nez v0, :cond_1

    .line 363
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_0
    const/4 v1, 0x0

    .line 359
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 360
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 365
    :cond_1
    const-string/jumbo v2, "shared_link_not_found"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 366
    sget-object v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->SHARED_LINK_NOT_FOUND:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    .line 389
    :goto_1
    if-nez v1, :cond_2

    .line 390
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 391
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 393
    :cond_2
    return-object v0

    .line 368
    :cond_3
    const-string/jumbo v2, "shared_link_access_denied"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 369
    sget-object v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->SHARED_LINK_ACCESS_DENIED:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    goto :goto_1

    .line 371
    :cond_4
    const-string/jumbo v2, "unsupported_link_type"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 372
    sget-object v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->UNSUPPORTED_LINK_TYPE:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    goto :goto_1

    .line 374
    :cond_5
    const-string/jumbo v2, "other"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 375
    sget-object v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->OTHER:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    goto :goto_1

    .line 377
    :cond_6
    const-string/jumbo v2, "settings_error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 379
    const-string/jumbo v0, "settings_error"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 380
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    move-result-object v0

    .line 381
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->settingsError(Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;)Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    move-result-object v0

    goto :goto_1

    .line 383
    :cond_7
    const-string/jumbo v2, "email_not_verified"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 384
    sget-object v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->EMAIL_NOT_VERIFIED:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    goto :goto_1

    .line 387
    :cond_8
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
    .line 307
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 312
    sget-object v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$1;->$SwitchMap$com$dropbox$core$v2$sharing$ModifySharedLinkSettingsError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->tag()Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 342
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->tag()Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :pswitch_0
    const-string/jumbo v0, "shared_link_not_found"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 345
    :goto_0
    return-void

    .line 318
    :pswitch_1
    const-string/jumbo v0, "shared_link_access_denied"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 322
    :pswitch_2
    const-string/jumbo v0, "unsupported_link_type"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :pswitch_3
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 330
    :pswitch_4
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 331
    const-string/jumbo v0, "settings_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 332
    const-string/jumbo v0, "settings_error"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 333
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;->access$000(Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;)Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharedLinkSettingsError;Lcom/d/a/a/g;)V

    .line 334
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 338
    :pswitch_5
    const-string/jumbo v0, "email_not_verified"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 312
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
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
    .line 307
    check-cast p1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;Lcom/d/a/a/g;)V

    return-void
.end method
