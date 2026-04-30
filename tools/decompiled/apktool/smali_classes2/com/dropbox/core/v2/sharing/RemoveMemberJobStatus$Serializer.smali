.class Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "RemoveMemberJobStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 284
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 319
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 321
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    move v1, v2

    .line 329
    :goto_0
    if-nez v0, :cond_1

    .line 330
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_0
    const/4 v1, 0x0

    .line 326
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 327
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 332
    :cond_1
    const-string/jumbo v3, "in_progress"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 333
    sget-object v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->IN_PROGRESS:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;

    .line 349
    :goto_1
    if-nez v1, :cond_2

    .line 350
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 351
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 353
    :cond_2
    return-object v0

    .line 335
    :cond_3
    const-string/jumbo v3, "complete"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 337
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    move-result-object v0

    .line 338
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->complete(Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;

    move-result-object v0

    goto :goto_1

    .line 340
    :cond_4
    const-string/jumbo v2, "failed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 342
    const-string/jumbo v0, "failed"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 343
    sget-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    move-result-object v0

    .line 344
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->failed(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;)Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;

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
    .line 283
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 288
    sget-object v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$1;->$SwitchMap$com$dropbox$core$v2$sharing$RemoveMemberJobStatus$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->tag()Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 309
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->tag()Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :pswitch_0
    const-string/jumbo v0, "in_progress"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 312
    :goto_0
    return-void

    .line 294
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 295
    const-string/jumbo v0, "complete"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 296
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->access$000(Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;Lcom/d/a/a/g;Z)V

    .line 297
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 301
    :pswitch_2
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 302
    const-string/jumbo v0, "failed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 303
    const-string/jumbo v0, "failed"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 304
    sget-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->access$100(Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;Lcom/d/a/a/g;)V

    .line 305
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 288
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
    .line 283
    check-cast p1, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;Lcom/d/a/a/g;)V

    return-void
.end method
