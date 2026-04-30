.class Lcom/dropbox/core/v2/team/MembersSuspendError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "MembersSuspendError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/MembersSuspendError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/MembersSuspendError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSuspendError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersSuspendError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersSuspendError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersSuspendError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/MembersSuspendError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 95
    const/4 v1, 0x1

    .line 96
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersSuspendError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 104
    :goto_0
    if-nez v0, :cond_1

    .line 105
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    const/4 v1, 0x0

    .line 101
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersSuspendError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 102
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersSuspendError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_1
    const-string/jumbo v2, "user_not_found"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 108
    sget-object v0, Lcom/dropbox/core/v2/team/MembersSuspendError;->USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersSuspendError;

    .line 128
    :goto_1
    if-nez v1, :cond_2

    .line 129
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersSuspendError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 130
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersSuspendError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 132
    :cond_2
    return-object v0

    .line 110
    :cond_3
    const-string/jumbo v2, "user_not_in_team"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 111
    sget-object v0, Lcom/dropbox/core/v2/team/MembersSuspendError;->USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersSuspendError;

    goto :goto_1

    .line 113
    :cond_4
    const-string/jumbo v2, "other"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 114
    sget-object v0, Lcom/dropbox/core/v2/team/MembersSuspendError;->OTHER:Lcom/dropbox/core/v2/team/MembersSuspendError;

    goto :goto_1

    .line 116
    :cond_5
    const-string/jumbo v2, "suspend_inactive_user"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 117
    sget-object v0, Lcom/dropbox/core/v2/team/MembersSuspendError;->SUSPEND_INACTIVE_USER:Lcom/dropbox/core/v2/team/MembersSuspendError;

    goto :goto_1

    .line 119
    :cond_6
    const-string/jumbo v2, "suspend_last_admin"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 120
    sget-object v0, Lcom/dropbox/core/v2/team/MembersSuspendError;->SUSPEND_LAST_ADMIN:Lcom/dropbox/core/v2/team/MembersSuspendError;

    goto :goto_1

    .line 122
    :cond_7
    const-string/jumbo v2, "team_license_limit"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 123
    sget-object v0, Lcom/dropbox/core/v2/team/MembersSuspendError;->TEAM_LICENSE_LIMIT:Lcom/dropbox/core/v2/team/MembersSuspendError;

    goto :goto_1

    .line 126
    :cond_8
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
    .line 53
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/MembersSuspendError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/MembersSuspendError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/MembersSuspendError;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 58
    sget-object v0, Lcom/dropbox/core/v2/team/MembersSuspendError$1;->$SwitchMap$com$dropbox$core$v2$team$MembersSuspendError:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/MembersSuspendError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 84
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

    .line 60
    :pswitch_0
    const-string/jumbo v0, "user_not_found"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 87
    :goto_0
    return-void

    .line 64
    :pswitch_1
    const-string/jumbo v0, "user_not_in_team"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :pswitch_2
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :pswitch_3
    const-string/jumbo v0, "suspend_inactive_user"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :pswitch_4
    const-string/jumbo v0, "suspend_last_admin"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :pswitch_5
    const-string/jumbo v0, "team_license_limit"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 58
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
    .line 53
    check-cast p1, Lcom/dropbox/core/v2/team/MembersSuspendError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/MembersSuspendError$Serializer;->serialize(Lcom/dropbox/core/v2/team/MembersSuspendError;Lcom/d/a/a/g;)V

    return-void
.end method
