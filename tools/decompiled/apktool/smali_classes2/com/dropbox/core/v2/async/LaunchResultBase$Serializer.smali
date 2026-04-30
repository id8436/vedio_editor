.class public Lcom/dropbox/core/v2/async/LaunchResultBase$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "LaunchResultBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/async/LaunchResultBase;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/async/LaunchResultBase$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 217
    new-instance v0, Lcom/dropbox/core/v2/async/LaunchResultBase$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/async/LaunchResultBase$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/async/LaunchResultBase$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/LaunchResultBase$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/async/LaunchResultBase;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 241
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 242
    const/4 v1, 0x1

    .line 243
    invoke-static {p1}, Lcom/dropbox/core/v2/async/LaunchResultBase$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 251
    :goto_0
    if-nez v0, :cond_1

    .line 252
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_0
    const/4 v1, 0x0

    .line 248
    invoke-static {p1}, Lcom/dropbox/core/v2/async/LaunchResultBase$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 249
    invoke-static {p1}, Lcom/dropbox/core/v2/async/LaunchResultBase$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 254
    :cond_1
    const-string/jumbo v2, "async_job_id"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 256
    const-string/jumbo v0, "async_job_id"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/async/LaunchResultBase$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 257
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 258
    invoke-static {v0}, Lcom/dropbox/core/v2/async/LaunchResultBase;->asyncJobId(Ljava/lang/String;)Lcom/dropbox/core/v2/async/LaunchResultBase;

    move-result-object v0

    .line 263
    if-nez v1, :cond_2

    .line 264
    invoke-static {p1}, Lcom/dropbox/core/v2/async/LaunchResultBase$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 265
    invoke-static {p1}, Lcom/dropbox/core/v2/async/LaunchResultBase$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 267
    :cond_2
    return-object v0

    .line 261
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
    .line 216
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/async/LaunchResultBase$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/async/LaunchResultBase;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/async/LaunchResultBase;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 221
    sget-object v0, Lcom/dropbox/core/v2/async/LaunchResultBase$1;->$SwitchMap$com$dropbox$core$v2$async$LaunchResultBase$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/async/LaunchResultBase;->tag()Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/async/LaunchResultBase;->tag()Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 224
    const-string/jumbo v0, "async_job_id"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/async/LaunchResultBase$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 225
    const-string/jumbo v0, "async_job_id"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 226
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/async/LaunchResultBase;->access$000(Lcom/dropbox/core/v2/async/LaunchResultBase;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 227
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 234
    return-void

    .line 221
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
    .line 216
    check-cast p1, Lcom/dropbox/core/v2/async/LaunchResultBase;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/async/LaunchResultBase$Serializer;->serialize(Lcom/dropbox/core/v2/async/LaunchResultBase;Lcom/d/a/a/g;)V

    return-void
.end method
