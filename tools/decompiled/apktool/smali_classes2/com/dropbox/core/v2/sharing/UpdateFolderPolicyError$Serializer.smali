.class Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "UpdateFolderPolicyError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 335
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 379
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 380
    const/4 v1, 0x1

    .line 381
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 382
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 389
    :goto_0
    if-nez v0, :cond_1

    .line 390
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_0
    const/4 v1, 0x0

    .line 386
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 387
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 392
    :cond_1
    const-string/jumbo v2, "access_error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 394
    const-string/jumbo v0, "access_error"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 395
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    move-result-object v0

    .line 396
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    move-result-object v0

    .line 416
    :goto_1
    if-nez v1, :cond_2

    .line 417
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 418
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 420
    :cond_2
    return-object v0

    .line 398
    :cond_3
    const-string/jumbo v2, "not_on_team"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 399
    sget-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    goto :goto_1

    .line 401
    :cond_4
    const-string/jumbo v2, "team_policy_disallows_member_policy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 402
    sget-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->TEAM_POLICY_DISALLOWS_MEMBER_POLICY:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    goto :goto_1

    .line 404
    :cond_5
    const-string/jumbo v2, "disallowed_shared_link_policy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 405
    sget-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->DISALLOWED_SHARED_LINK_POLICY:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    goto :goto_1

    .line 407
    :cond_6
    const-string/jumbo v2, "no_permission"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 408
    sget-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    goto :goto_1

    .line 410
    :cond_7
    const-string/jumbo v2, "team_folder"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 411
    sget-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    goto :goto_1

    .line 414
    :cond_8
    sget-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->OTHER:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

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
    .line 334
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 339
    sget-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$1;->$SwitchMap$com$dropbox$core$v2$sharing$UpdateFolderPolicyError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->tag()Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 369
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 372
    :goto_0
    return-void

    .line 341
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 342
    const-string/jumbo v0, "access_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 343
    const-string/jumbo v0, "access_error"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 344
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->access$000(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/d/a/a/g;)V

    .line 345
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 349
    :pswitch_1
    const-string/jumbo v0, "not_on_team"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :pswitch_2
    const-string/jumbo v0, "team_policy_disallows_member_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :pswitch_3
    const-string/jumbo v0, "disallowed_shared_link_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 361
    :pswitch_4
    const-string/jumbo v0, "no_permission"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :pswitch_5
    const-string/jumbo v0, "team_folder"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 339
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
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
    .line 334
    check-cast p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;Lcom/d/a/a/g;)V

    return-void
.end method
