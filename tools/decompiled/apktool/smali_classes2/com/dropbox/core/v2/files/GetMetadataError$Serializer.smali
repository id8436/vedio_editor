.class Lcom/dropbox/core/v2/files/GetMetadataError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "GetMetadataError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/GetMetadataError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/GetMetadataError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 185
    new-instance v0, Lcom/dropbox/core/v2/files/GetMetadataError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/GetMetadataError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/GetMetadataError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/GetMetadataError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/GetMetadataError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 209
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 210
    const/4 v1, 0x1

    .line 211
    invoke-static {p1}, Lcom/dropbox/core/v2/files/GetMetadataError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 219
    :goto_0
    if-nez v0, :cond_1

    .line 220
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    const/4 v1, 0x0

    .line 216
    invoke-static {p1}, Lcom/dropbox/core/v2/files/GetMetadataError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 217
    invoke-static {p1}, Lcom/dropbox/core/v2/files/GetMetadataError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 222
    :cond_1
    const-string/jumbo v2, "path"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 224
    const-string/jumbo v0, "path"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/files/GetMetadataError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 225
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v0

    .line 226
    invoke-static {v0}, Lcom/dropbox/core/v2/files/GetMetadataError;->path(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/GetMetadataError;

    move-result-object v0

    .line 231
    if-nez v1, :cond_2

    .line 232
    invoke-static {p1}, Lcom/dropbox/core/v2/files/GetMetadataError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 233
    invoke-static {p1}, Lcom/dropbox/core/v2/files/GetMetadataError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 235
    :cond_2
    return-object v0

    .line 229
    :cond_3
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
    .line 184
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/GetMetadataError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/GetMetadataError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/GetMetadataError;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 189
    sget-object v0, Lcom/dropbox/core/v2/files/GetMetadataError$1;->$SwitchMap$com$dropbox$core$v2$files$GetMetadataError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/GetMetadataError;->tag()Lcom/dropbox/core/v2/files/GetMetadataError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/GetMetadataError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/GetMetadataError;->tag()Lcom/dropbox/core/v2/files/GetMetadataError$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 192
    const-string/jumbo v0, "path"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/GetMetadataError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 193
    const-string/jumbo v0, "path"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 194
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/GetMetadataError;->access$000(Lcom/dropbox/core/v2/files/GetMetadataError;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->serialize(Lcom/dropbox/core/v2/files/LookupError;Lcom/d/a/a/g;)V

    .line 195
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 202
    return-void

    .line 189
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
    .line 184
    check-cast p1, Lcom/dropbox/core/v2/files/GetMetadataError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/GetMetadataError$Serializer;->serialize(Lcom/dropbox/core/v2/files/GetMetadataError;Lcom/d/a/a/g;)V

    return-void
.end method
