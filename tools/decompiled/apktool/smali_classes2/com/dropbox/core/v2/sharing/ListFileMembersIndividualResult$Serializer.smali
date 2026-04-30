.class Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "ListFileMembersIndividualResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 302
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 333
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 335
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    move v1, v2

    .line 343
    :goto_0
    if-nez v0, :cond_1

    .line 344
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_0
    const/4 v1, 0x0

    .line 340
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 341
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 346
    :cond_1
    const-string/jumbo v3, "result"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 348
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;

    move-result-object v0

    .line 349
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->result(Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;)Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;

    move-result-object v0

    .line 360
    :goto_1
    if-nez v1, :cond_2

    .line 361
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 362
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 364
    :cond_2
    return-object v0

    .line 351
    :cond_3
    const-string/jumbo v2, "access_error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 353
    const-string/jumbo v0, "access_error"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 354
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    move-result-object v0

    .line 355
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->accessError(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;

    move-result-object v0

    goto :goto_1

    .line 358
    :cond_4
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->OTHER:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;

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
    .line 301
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 306
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$1;->$SwitchMap$com$dropbox$core$v2$sharing$ListFileMembersIndividualResult$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->tag()Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 323
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 326
    :goto_0
    return-void

    .line 308
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 309
    const-string/jumbo v0, "result"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 310
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->access$000(Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;)Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;Lcom/d/a/a/g;Z)V

    .line 311
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 315
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 316
    const-string/jumbo v0, "access_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 317
    const-string/jumbo v0, "access_error"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 318
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->access$100(Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;Lcom/d/a/a/g;)V

    .line 319
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 306
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
    .line 301
    check-cast p1, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;Lcom/d/a/a/g;)V

    return-void
.end method
