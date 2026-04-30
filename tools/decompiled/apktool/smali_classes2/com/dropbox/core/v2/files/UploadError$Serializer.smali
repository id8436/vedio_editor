.class Lcom/dropbox/core/v2/files/UploadError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "UploadError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/UploadError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/UploadError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 229
    new-instance v0, Lcom/dropbox/core/v2/files/UploadError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/UploadError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/UploadError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 252
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 254
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    move v1, v2

    .line 262
    :goto_0
    if-nez v0, :cond_1

    .line 263
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_0
    const/4 v1, 0x0

    .line 259
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 260
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 265
    :cond_1
    const-string/jumbo v3, "path"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 267
    sget-object v0, Lcom/dropbox/core/v2/files/UploadWriteFailed$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadWriteFailed$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/files/UploadWriteFailed$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/files/UploadWriteFailed;

    move-result-object v0

    .line 268
    invoke-static {v0}, Lcom/dropbox/core/v2/files/UploadError;->path(Lcom/dropbox/core/v2/files/UploadWriteFailed;)Lcom/dropbox/core/v2/files/UploadError;

    move-result-object v0

    .line 273
    :goto_1
    if-nez v1, :cond_2

    .line 274
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 275
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 277
    :cond_2
    return-object v0

    .line 271
    :cond_3
    sget-object v0, Lcom/dropbox/core/v2/files/UploadError;->OTHER:Lcom/dropbox/core/v2/files/UploadError;

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
    .line 228
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/UploadError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/UploadError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/UploadError;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 233
    sget-object v0, Lcom/dropbox/core/v2/files/UploadError$1;->$SwitchMap$com$dropbox$core$v2$files$UploadError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/UploadError;->tag()Lcom/dropbox/core/v2/files/UploadError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/UploadError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 242
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 245
    :goto_0
    return-void

    .line 235
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 236
    const-string/jumbo v0, "path"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/UploadError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 237
    sget-object v0, Lcom/dropbox/core/v2/files/UploadWriteFailed$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadWriteFailed$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadError;->access$000(Lcom/dropbox/core/v2/files/UploadError;)Lcom/dropbox/core/v2/files/UploadWriteFailed;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/files/UploadWriteFailed$Serializer;->serialize(Lcom/dropbox/core/v2/files/UploadWriteFailed;Lcom/d/a/a/g;Z)V

    .line 238
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
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
    .line 228
    check-cast p1, Lcom/dropbox/core/v2/files/UploadError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/UploadError$Serializer;->serialize(Lcom/dropbox/core/v2/files/UploadError;Lcom/d/a/a/g;)V

    return-void
.end method
