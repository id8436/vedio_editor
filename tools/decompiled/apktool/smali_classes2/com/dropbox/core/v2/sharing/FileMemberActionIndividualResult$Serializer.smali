.class Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "FileMemberActionIndividualResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 274
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 306
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 307
    const/4 v1, 0x1

    .line 308
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 316
    :goto_0
    if-nez v0, :cond_1

    .line 317
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_0
    const/4 v1, 0x0

    .line 313
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 314
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 319
    :cond_1
    const-string/jumbo v2, "success"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 320
    const/4 v0, 0x0

    .line 321
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v2

    sget-object v3, Lcom/d/a/a/o;->c:Lcom/d/a/a/o;

    if-eq v2, v3, :cond_2

    .line 322
    const-string/jumbo v0, "success"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 323
    sget-object v0, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 325
    :cond_2
    if-nez v0, :cond_4

    .line 326
    invoke-static {}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->success()Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    move-result-object v0

    .line 341
    :goto_1
    if-nez v1, :cond_3

    .line 342
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 343
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 345
    :cond_3
    return-object v0

    .line 329
    :cond_4
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->success(Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    move-result-object v0

    goto :goto_1

    .line 332
    :cond_5
    const-string/jumbo v2, "member_error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 334
    const-string/jumbo v0, "member_error"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 335
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    move-result-object v0

    .line 336
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->memberError(Lcom/dropbox/core/v2/sharing/FileMemberActionError;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    move-result-object v0

    goto :goto_1

    .line 339
    :cond_6
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
    .line 273
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 278
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$1;->$SwitchMap$com$dropbox$core$v2$sharing$FileMemberActionIndividualResult$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->tag()Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 296
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->tag()Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 281
    const-string/jumbo v0, "success"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 282
    const-string/jumbo v0, "success"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 283
    sget-object v0, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->access$000(Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;)Lcom/dropbox/core/v2/sharing/AccessLevel;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 284
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 299
    :goto_0
    return-void

    .line 288
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 289
    const-string/jumbo v0, "member_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 290
    const-string/jumbo v0, "member_error"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 291
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->access$100(Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;)Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/FileMemberActionError;Lcom/d/a/a/g;)V

    .line 292
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 278
    nop

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
    .line 273
    check-cast p1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;Lcom/d/a/a/g;)V

    return-void
.end method
