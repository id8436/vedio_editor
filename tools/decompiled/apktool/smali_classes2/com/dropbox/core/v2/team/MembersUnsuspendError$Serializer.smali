.class Lcom/dropbox/core/v2/team/MembersUnsuspendError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "MembersUnsuspendError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/MembersUnsuspendError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/MembersUnsuspendError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/dropbox/core/v2/team/MembersUnsuspendError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersUnsuspendError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersUnsuspendError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersUnsuspendError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/MembersUnsuspendError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 87
    const/4 v1, 0x1

    .line 88
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersUnsuspendError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 96
    :goto_0
    if-nez v0, :cond_1

    .line 97
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    const/4 v1, 0x0

    .line 93
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersUnsuspendError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 94
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersUnsuspendError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 99
    :cond_1
    const-string/jumbo v2, "user_not_found"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 100
    sget-object v0, Lcom/dropbox/core/v2/team/MembersUnsuspendError;->USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersUnsuspendError;

    .line 117
    :goto_1
    if-nez v1, :cond_2

    .line 118
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersUnsuspendError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 119
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersUnsuspendError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 121
    :cond_2
    return-object v0

    .line 102
    :cond_3
    const-string/jumbo v2, "user_not_in_team"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 103
    sget-object v0, Lcom/dropbox/core/v2/team/MembersUnsuspendError;->USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersUnsuspendError;

    goto :goto_1

    .line 105
    :cond_4
    const-string/jumbo v2, "other"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 106
    sget-object v0, Lcom/dropbox/core/v2/team/MembersUnsuspendError;->OTHER:Lcom/dropbox/core/v2/team/MembersUnsuspendError;

    goto :goto_1

    .line 108
    :cond_5
    const-string/jumbo v2, "unsuspend_non_suspended_member"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 109
    sget-object v0, Lcom/dropbox/core/v2/team/MembersUnsuspendError;->UNSUSPEND_NON_SUSPENDED_MEMBER:Lcom/dropbox/core/v2/team/MembersUnsuspendError;

    goto :goto_1

    .line 111
    :cond_6
    const-string/jumbo v2, "team_license_limit"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 112
    sget-object v0, Lcom/dropbox/core/v2/team/MembersUnsuspendError;->TEAM_LICENSE_LIMIT:Lcom/dropbox/core/v2/team/MembersUnsuspendError;

    goto :goto_1

    .line 115
    :cond_7
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
    .line 49
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/MembersUnsuspendError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/MembersUnsuspendError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/MembersUnsuspendError;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 54
    sget-object v0, Lcom/dropbox/core/v2/team/MembersUnsuspendError$1;->$SwitchMap$com$dropbox$core$v2$team$MembersUnsuspendError:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/MembersUnsuspendError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :pswitch_0
    const-string/jumbo v0, "user_not_found"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 79
    :goto_0
    return-void

    .line 60
    :pswitch_1
    const-string/jumbo v0, "user_not_in_team"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :pswitch_2
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :pswitch_3
    const-string/jumbo v0, "unsuspend_non_suspended_member"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :pswitch_4
    const-string/jumbo v0, "team_license_limit"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 54
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
    .line 49
    check-cast p1, Lcom/dropbox/core/v2/team/MembersUnsuspendError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/MembersUnsuspendError$Serializer;->serialize(Lcom/dropbox/core/v2/team/MembersUnsuspendError;Lcom/d/a/a/g;)V

    return-void
.end method
