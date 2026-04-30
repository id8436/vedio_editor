.class public Lcom/dropbox/core/v2/auth/AccessError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "AccessError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/auth/AccessError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/auth/AccessError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 313
    new-instance v0, Lcom/dropbox/core/v2/auth/AccessError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/auth/AccessError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/auth/AccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/auth/AccessError$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/auth/AccessError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 345
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 346
    const/4 v1, 0x1

    .line 347
    invoke-static {p1}, Lcom/dropbox/core/v2/auth/AccessError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 355
    :goto_0
    if-nez v0, :cond_1

    .line 356
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_0
    const/4 v1, 0x0

    .line 352
    invoke-static {p1}, Lcom/dropbox/core/v2/auth/AccessError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 353
    invoke-static {p1}, Lcom/dropbox/core/v2/auth/AccessError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 358
    :cond_1
    const-string/jumbo v2, "invalid_account_type"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 360
    const-string/jumbo v0, "invalid_account_type"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/auth/AccessError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 361
    sget-object v0, Lcom/dropbox/core/v2/auth/InvalidAccountTypeError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/auth/InvalidAccountTypeError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/auth/InvalidAccountTypeError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;

    move-result-object v0

    .line 362
    invoke-static {v0}, Lcom/dropbox/core/v2/auth/AccessError;->invalidAccountType(Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;)Lcom/dropbox/core/v2/auth/AccessError;

    move-result-object v0

    .line 373
    :goto_1
    if-nez v1, :cond_2

    .line 374
    invoke-static {p1}, Lcom/dropbox/core/v2/auth/AccessError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 375
    invoke-static {p1}, Lcom/dropbox/core/v2/auth/AccessError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 377
    :cond_2
    return-object v0

    .line 364
    :cond_3
    const-string/jumbo v2, "paper_access_denied"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 366
    const-string/jumbo v0, "paper_access_denied"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/auth/AccessError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 367
    sget-object v0, Lcom/dropbox/core/v2/auth/PaperAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/auth/PaperAccessError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/auth/PaperAccessError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/auth/PaperAccessError;

    move-result-object v0

    .line 368
    invoke-static {v0}, Lcom/dropbox/core/v2/auth/AccessError;->paperAccessDenied(Lcom/dropbox/core/v2/auth/PaperAccessError;)Lcom/dropbox/core/v2/auth/AccessError;

    move-result-object v0

    goto :goto_1

    .line 371
    :cond_4
    sget-object v0, Lcom/dropbox/core/v2/auth/AccessError;->OTHER:Lcom/dropbox/core/v2/auth/AccessError;

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
    .line 312
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/auth/AccessError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/auth/AccessError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/auth/AccessError;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 317
    sget-object v0, Lcom/dropbox/core/v2/auth/AccessError$1;->$SwitchMap$com$dropbox$core$v2$auth$AccessError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/auth/AccessError;->tag()Lcom/dropbox/core/v2/auth/AccessError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/auth/AccessError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 335
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 338
    :goto_0
    return-void

    .line 319
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 320
    const-string/jumbo v0, "invalid_account_type"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/auth/AccessError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 321
    const-string/jumbo v0, "invalid_account_type"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 322
    sget-object v0, Lcom/dropbox/core/v2/auth/InvalidAccountTypeError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/auth/InvalidAccountTypeError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/auth/AccessError;->access$000(Lcom/dropbox/core/v2/auth/AccessError;)Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/auth/InvalidAccountTypeError$Serializer;->serialize(Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;Lcom/d/a/a/g;)V

    .line 323
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 327
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 328
    const-string/jumbo v0, "paper_access_denied"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/auth/AccessError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 329
    const-string/jumbo v0, "paper_access_denied"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 330
    sget-object v0, Lcom/dropbox/core/v2/auth/PaperAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/auth/PaperAccessError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/auth/AccessError;->access$100(Lcom/dropbox/core/v2/auth/AccessError;)Lcom/dropbox/core/v2/auth/PaperAccessError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/auth/PaperAccessError$Serializer;->serialize(Lcom/dropbox/core/v2/auth/PaperAccessError;Lcom/d/a/a/g;)V

    .line 331
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 317
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
    .line 312
    check-cast p1, Lcom/dropbox/core/v2/auth/AccessError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/auth/AccessError$Serializer;->serialize(Lcom/dropbox/core/v2/auth/AccessError;Lcom/d/a/a/g;)V

    return-void
.end method
