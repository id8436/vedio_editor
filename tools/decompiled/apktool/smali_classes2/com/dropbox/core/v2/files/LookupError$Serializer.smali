.class public Lcom/dropbox/core/v2/files/LookupError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "LookupError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/LookupError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 319
    new-instance v0, Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/LookupError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/LookupError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 359
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 360
    const/4 v1, 0x1

    .line 361
    invoke-static {p1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 369
    :goto_0
    if-nez v0, :cond_1

    .line 370
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_0
    const/4 v1, 0x0

    .line 366
    invoke-static {p1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 367
    invoke-static {p1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 372
    :cond_1
    const-string/jumbo v2, "malformed_path"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 373
    const/4 v0, 0x0

    .line 374
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v2

    sget-object v3, Lcom/d/a/a/o;->c:Lcom/d/a/a/o;

    if-eq v2, v3, :cond_2

    .line 375
    const-string/jumbo v0, "malformed_path"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 376
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 378
    :cond_2
    if-nez v0, :cond_4

    .line 379
    invoke-static {}, Lcom/dropbox/core/v2/files/LookupError;->malformedPath()Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v0

    .line 400
    :goto_1
    if-nez v1, :cond_3

    .line 401
    invoke-static {p1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 402
    invoke-static {p1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 404
    :cond_3
    return-object v0

    .line 382
    :cond_4
    invoke-static {v0}, Lcom/dropbox/core/v2/files/LookupError;->malformedPath(Ljava/lang/String;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v0

    goto :goto_1

    .line 385
    :cond_5
    const-string/jumbo v2, "not_found"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 386
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError;->NOT_FOUND:Lcom/dropbox/core/v2/files/LookupError;

    goto :goto_1

    .line 388
    :cond_6
    const-string/jumbo v2, "not_file"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 389
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError;->NOT_FILE:Lcom/dropbox/core/v2/files/LookupError;

    goto :goto_1

    .line 391
    :cond_7
    const-string/jumbo v2, "not_folder"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 392
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError;->NOT_FOLDER:Lcom/dropbox/core/v2/files/LookupError;

    goto :goto_1

    .line 394
    :cond_8
    const-string/jumbo v2, "restricted_content"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 395
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/files/LookupError;

    goto :goto_1

    .line 398
    :cond_9
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError;->OTHER:Lcom/dropbox/core/v2/files/LookupError;

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
    .line 318
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/LookupError;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 323
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError$1;->$SwitchMap$com$dropbox$core$v2$files$LookupError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/LookupError;->tag()Lcom/dropbox/core/v2/files/LookupError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/LookupError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 349
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 352
    :goto_0
    return-void

    .line 325
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 326
    const-string/jumbo v0, "malformed_path"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 327
    const-string/jumbo v0, "malformed_path"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 328
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/files/LookupError;->access$000(Lcom/dropbox/core/v2/files/LookupError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 329
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 333
    :pswitch_1
    const-string/jumbo v0, "not_found"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :pswitch_2
    const-string/jumbo v0, "not_file"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 341
    :pswitch_3
    const-string/jumbo v0, "not_folder"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 345
    :pswitch_4
    const-string/jumbo v0, "restricted_content"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 323
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
    .line 318
    check-cast p1, Lcom/dropbox/core/v2/files/LookupError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->serialize(Lcom/dropbox/core/v2/files/LookupError;Lcom/d/a/a/g;)V

    return-void
.end method
