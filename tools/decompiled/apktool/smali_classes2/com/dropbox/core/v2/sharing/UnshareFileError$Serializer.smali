.class Lcom/dropbox/core/v2/sharing/UnshareFileError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "UnshareFileError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/UnshareFileError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/UnshareFileError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 295
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnshareFileError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UnshareFileError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/UnshareFileError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UnshareFileError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/UnshareFileError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 327
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 328
    const/4 v1, 0x1

    .line 329
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UnshareFileError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 337
    :goto_0
    if-nez v0, :cond_1

    .line 338
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_0
    const/4 v1, 0x0

    .line 334
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UnshareFileError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 335
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UnshareFileError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 340
    :cond_1
    const-string/jumbo v2, "user_error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 342
    const-string/jumbo v0, "user_error"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/UnshareFileError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 343
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/SharingUserError;

    move-result-object v0

    .line 344
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/UnshareFileError;->userError(Lcom/dropbox/core/v2/sharing/SharingUserError;)Lcom/dropbox/core/v2/sharing/UnshareFileError;

    move-result-object v0

    .line 355
    :goto_1
    if-nez v1, :cond_2

    .line 356
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UnshareFileError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 357
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UnshareFileError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 359
    :cond_2
    return-object v0

    .line 346
    :cond_3
    const-string/jumbo v2, "access_error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 348
    const-string/jumbo v0, "access_error"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/UnshareFileError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 349
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    move-result-object v0

    .line 350
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/UnshareFileError;->accessError(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/UnshareFileError;

    move-result-object v0

    goto :goto_1

    .line 353
    :cond_4
    sget-object v0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->OTHER:Lcom/dropbox/core/v2/sharing/UnshareFileError;

    goto :goto_1
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
    .line 294
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/UnshareFileError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/UnshareFileError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/UnshareFileError;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 299
    sget-object v0, Lcom/dropbox/core/v2/sharing/UnshareFileError$1;->$SwitchMap$com$dropbox$core$v2$sharing$UnshareFileError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/UnshareFileError;->tag()Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 317
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 320
    :goto_0
    return-void

    .line 301
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 302
    const-string/jumbo v0, "user_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/UnshareFileError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 303
    const-string/jumbo v0, "user_error"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 304
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UnshareFileError;->access$000(Lcom/dropbox/core/v2/sharing/UnshareFileError;)Lcom/dropbox/core/v2/sharing/SharingUserError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharingUserError;Lcom/d/a/a/g;)V

    .line 305
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 309
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 310
    const-string/jumbo v0, "access_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/UnshareFileError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 311
    const-string/jumbo v0, "access_error"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 312
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UnshareFileError;->access$100(Lcom/dropbox/core/v2/sharing/UnshareFileError;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;Lcom/d/a/a/g;)V

    .line 313
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 299
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
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
    .line 294
    check-cast p1, Lcom/dropbox/core/v2/sharing/UnshareFileError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/UnshareFileError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/UnshareFileError;Lcom/d/a/a/g;)V

    return-void
.end method
