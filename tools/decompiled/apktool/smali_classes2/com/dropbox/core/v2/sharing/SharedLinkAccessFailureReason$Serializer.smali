.class Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SharedLinkAccessFailureReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 90
    const/4 v1, 0x1

    .line 91
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 99
    :goto_0
    if-nez v0, :cond_1

    .line 100
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    const/4 v1, 0x0

    .line 96
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 97
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_1
    const-string/jumbo v2, "login_required"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 103
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;->LOGIN_REQUIRED:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    .line 120
    :goto_1
    if-nez v1, :cond_2

    .line 121
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 122
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 124
    :cond_2
    return-object v0

    .line 105
    :cond_3
    const-string/jumbo v2, "email_verify_required"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 106
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;->EMAIL_VERIFY_REQUIRED:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    goto :goto_1

    .line 108
    :cond_4
    const-string/jumbo v2, "password_required"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 109
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;->PASSWORD_REQUIRED:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    goto :goto_1

    .line 111
    :cond_5
    const-string/jumbo v2, "team_only"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 112
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;->TEAM_ONLY:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    goto :goto_1

    .line 114
    :cond_6
    const-string/jumbo v2, "owner_only"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 115
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;->OWNER_ONLY:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    goto :goto_1

    .line 118
    :cond_7
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;->OTHER:Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

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
    .line 52
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 57
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason$1;->$SwitchMap$com$dropbox$core$v2$sharing$SharedLinkAccessFailureReason:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 79
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 82
    :goto_0
    return-void

    .line 59
    :pswitch_0
    const-string/jumbo v0, "login_required"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :pswitch_1
    const-string/jumbo v0, "email_verify_required"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :pswitch_2
    const-string/jumbo v0, "password_required"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :pswitch_3
    const-string/jumbo v0, "team_only"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :pswitch_4
    const-string/jumbo v0, "owner_only"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    nop

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
    .line 52
    check-cast p1, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharedLinkAccessFailureReason;Lcom/d/a/a/g;)V

    return-void
.end method
