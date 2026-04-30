.class Lcom/dropbox/core/v2/files/WriteMode$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "WriteMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/WriteMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/WriteMode$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 289
    new-instance v0, Lcom/dropbox/core/v2/files/WriteMode$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteMode$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/WriteMode$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteMode$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/WriteMode;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 321
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 322
    const/4 v1, 0x1

    .line 323
    invoke-static {p1}, Lcom/dropbox/core/v2/files/WriteMode$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 331
    :goto_0
    if-nez v0, :cond_1

    .line 332
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_0
    const/4 v1, 0x0

    .line 328
    invoke-static {p1}, Lcom/dropbox/core/v2/files/WriteMode$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 329
    invoke-static {p1}, Lcom/dropbox/core/v2/files/WriteMode$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 334
    :cond_1
    const-string/jumbo v2, "add"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 335
    sget-object v0, Lcom/dropbox/core/v2/files/WriteMode;->ADD:Lcom/dropbox/core/v2/files/WriteMode;

    .line 349
    :goto_1
    if-nez v1, :cond_2

    .line 350
    invoke-static {p1}, Lcom/dropbox/core/v2/files/WriteMode$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 351
    invoke-static {p1}, Lcom/dropbox/core/v2/files/WriteMode$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 353
    :cond_2
    return-object v0

    .line 337
    :cond_3
    const-string/jumbo v2, "overwrite"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 338
    sget-object v0, Lcom/dropbox/core/v2/files/WriteMode;->OVERWRITE:Lcom/dropbox/core/v2/files/WriteMode;

    goto :goto_1

    .line 340
    :cond_4
    const-string/jumbo v2, "update"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 342
    const-string/jumbo v0, "update"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/files/WriteMode$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 343
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 344
    invoke-static {v0}, Lcom/dropbox/core/v2/files/WriteMode;->update(Ljava/lang/String;)Lcom/dropbox/core/v2/files/WriteMode;

    move-result-object v0

    goto :goto_1

    .line 347
    :cond_5
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
    .line 288
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/WriteMode$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/WriteMode;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/WriteMode;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 293
    sget-object v0, Lcom/dropbox/core/v2/files/WriteMode$1;->$SwitchMap$com$dropbox$core$v2$files$WriteMode$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/WriteMode;->tag()Lcom/dropbox/core/v2/files/WriteMode$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/WriteMode$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 311
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/WriteMode;->tag()Lcom/dropbox/core/v2/files/WriteMode$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :pswitch_0
    const-string/jumbo v0, "add"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 314
    :goto_0
    return-void

    .line 299
    :pswitch_1
    const-string/jumbo v0, "overwrite"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 303
    :pswitch_2
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 304
    const-string/jumbo v0, "update"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/WriteMode$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 305
    const-string/jumbo v0, "update"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 306
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/files/WriteMode;->access$000(Lcom/dropbox/core/v2/files/WriteMode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 307
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
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
    .line 288
    check-cast p1, Lcom/dropbox/core/v2/files/WriteMode;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/WriteMode$Serializer;->serialize(Lcom/dropbox/core/v2/files/WriteMode;Lcom/d/a/a/g;)V

    return-void
.end method
