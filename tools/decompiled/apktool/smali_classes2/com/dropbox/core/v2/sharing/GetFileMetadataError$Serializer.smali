.class Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "GetFileMetadataError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/GetFileMetadataError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 299
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/GetFileMetadataError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 331
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 332
    const/4 v1, 0x1

    .line 333
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 334
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 341
    :goto_0
    if-nez v0, :cond_1

    .line 342
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_0
    const/4 v1, 0x0

    .line 338
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 339
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 344
    :cond_1
    const-string/jumbo v2, "user_error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 346
    const-string/jumbo v0, "user_error"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 347
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/SharingUserError;

    move-result-object v0

    .line 348
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->userError(Lcom/dropbox/core/v2/sharing/SharingUserError;)Lcom/dropbox/core/v2/sharing/GetFileMetadataError;

    move-result-object v0

    .line 359
    :goto_1
    if-nez v1, :cond_2

    .line 360
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 361
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 363
    :cond_2
    return-object v0

    .line 350
    :cond_3
    const-string/jumbo v2, "access_error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 352
    const-string/jumbo v0, "access_error"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 353
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    move-result-object v0

    .line 354
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->accessError(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/GetFileMetadataError;

    move-result-object v0

    goto :goto_1

    .line 357
    :cond_4
    sget-object v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->OTHER:Lcom/dropbox/core/v2/sharing/GetFileMetadataError;

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
    .line 298
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/GetFileMetadataError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/GetFileMetadataError;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 303
    sget-object v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$1;->$SwitchMap$com$dropbox$core$v2$sharing$GetFileMetadataError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->tag()Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 321
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 324
    :goto_0
    return-void

    .line 305
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 306
    const-string/jumbo v0, "user_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 307
    const-string/jumbo v0, "user_error"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 308
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->access$000(Lcom/dropbox/core/v2/sharing/GetFileMetadataError;)Lcom/dropbox/core/v2/sharing/SharingUserError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharingUserError;Lcom/d/a/a/g;)V

    .line 309
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 313
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 314
    const-string/jumbo v0, "access_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 315
    const-string/jumbo v0, "access_error"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 316
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->access$100(Lcom/dropbox/core/v2/sharing/GetFileMetadataError;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;Lcom/d/a/a/g;)V

    .line 317
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 303
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
    .line 298
    check-cast p1, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/GetFileMetadataError;Lcom/d/a/a/g;)V

    return-void
.end method
