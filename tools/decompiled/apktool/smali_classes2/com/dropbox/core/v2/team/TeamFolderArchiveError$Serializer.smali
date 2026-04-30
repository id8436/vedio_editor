.class Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "TeamFolderArchiveError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/TeamFolderArchiveError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 353
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/TeamFolderArchiveError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 397
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 398
    const/4 v1, 0x1

    .line 399
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 400
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 407
    :goto_0
    if-nez v0, :cond_1

    .line 408
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_0
    const/4 v1, 0x0

    .line 404
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 405
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 410
    :cond_1
    const-string/jumbo v2, "access_error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 412
    const-string/jumbo v0, "access_error"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 413
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderAccessError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/TeamFolderAccessError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    move-result-object v0

    .line 414
    invoke-static {v0}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->accessError(Lcom/dropbox/core/v2/team/TeamFolderAccessError;)Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    move-result-object v0

    .line 434
    :goto_1
    if-nez v1, :cond_2

    .line 435
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 436
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 438
    :cond_2
    return-object v0

    .line 416
    :cond_3
    const-string/jumbo v2, "status_error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 418
    const-string/jumbo v0, "status_error"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 419
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    move-result-object v0

    .line 420
    invoke-static {v0}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->statusError(Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;)Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    move-result-object v0

    goto :goto_1

    .line 422
    :cond_4
    const-string/jumbo v2, "team_shared_dropbox_error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 424
    const-string/jumbo v0, "team_shared_dropbox_error"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 425
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    move-result-object v0

    .line 426
    invoke-static {v0}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->teamSharedDropboxError(Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;)Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    move-result-object v0

    goto :goto_1

    .line 428
    :cond_5
    const-string/jumbo v2, "other"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 429
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->OTHER:Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    goto :goto_1

    .line 432
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
    .line 352
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/TeamFolderArchiveError;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 357
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$1;->$SwitchMap$com$dropbox$core$v2$team$TeamFolderArchiveError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->tag()Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 387
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->tag()Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 360
    const-string/jumbo v0, "access_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 361
    const-string/jumbo v0, "access_error"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 362
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderAccessError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->access$000(Lcom/dropbox/core/v2/team/TeamFolderArchiveError;)Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/TeamFolderAccessError$Serializer;->serialize(Lcom/dropbox/core/v2/team/TeamFolderAccessError;Lcom/d/a/a/g;)V

    .line 363
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 390
    :goto_0
    return-void

    .line 367
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 368
    const-string/jumbo v0, "status_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 369
    const-string/jumbo v0, "status_error"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 370
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->access$100(Lcom/dropbox/core/v2/team/TeamFolderArchiveError;)Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError$Serializer;->serialize(Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;Lcom/d/a/a/g;)V

    .line 371
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 375
    :pswitch_2
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 376
    const-string/jumbo v0, "team_shared_dropbox_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 377
    const-string/jumbo v0, "team_shared_dropbox_error"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 378
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->access$200(Lcom/dropbox/core/v2/team/TeamFolderArchiveError;)Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError$Serializer;->serialize(Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;Lcom/d/a/a/g;)V

    .line 379
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 383
    :pswitch_3
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
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
    .line 352
    check-cast p1, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Serializer;->serialize(Lcom/dropbox/core/v2/team/TeamFolderArchiveError;Lcom/d/a/a/g;)V

    return-void
.end method
