.class Lcom/dropbox/core/v2/team/MembersSetProfileError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "MembersSetProfileError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/MembersSetProfileError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/MembersSetProfileError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSetProfileError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersSetProfileError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersSetProfileError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersSetProfileError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/MembersSetProfileError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 133
    const/4 v1, 0x1

    .line 134
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersSetProfileError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 142
    :goto_0
    if-nez v0, :cond_1

    .line 143
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    const/4 v1, 0x0

    .line 139
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersSetProfileError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 140
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersSetProfileError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 145
    :cond_1
    const-string/jumbo v2, "user_not_found"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 146
    sget-object v0, Lcom/dropbox/core/v2/team/MembersSetProfileError;->USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    .line 178
    :goto_1
    if-nez v1, :cond_2

    .line 179
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersSetProfileError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 180
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersSetProfileError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 182
    :cond_2
    return-object v0

    .line 148
    :cond_3
    const-string/jumbo v2, "user_not_in_team"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 149
    sget-object v0, Lcom/dropbox/core/v2/team/MembersSetProfileError;->USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    goto :goto_1

    .line 151
    :cond_4
    const-string/jumbo v2, "external_id_and_new_external_id_unsafe"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 152
    sget-object v0, Lcom/dropbox/core/v2/team/MembersSetProfileError;->EXTERNAL_ID_AND_NEW_EXTERNAL_ID_UNSAFE:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    goto :goto_1

    .line 154
    :cond_5
    const-string/jumbo v2, "no_new_data_specified"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 155
    sget-object v0, Lcom/dropbox/core/v2/team/MembersSetProfileError;->NO_NEW_DATA_SPECIFIED:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    goto :goto_1

    .line 157
    :cond_6
    const-string/jumbo v2, "email_reserved_for_other_user"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 158
    sget-object v0, Lcom/dropbox/core/v2/team/MembersSetProfileError;->EMAIL_RESERVED_FOR_OTHER_USER:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    goto :goto_1

    .line 160
    :cond_7
    const-string/jumbo v2, "external_id_used_by_other_user"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 161
    sget-object v0, Lcom/dropbox/core/v2/team/MembersSetProfileError;->EXTERNAL_ID_USED_BY_OTHER_USER:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    goto :goto_1

    .line 163
    :cond_8
    const-string/jumbo v2, "set_profile_disallowed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 164
    sget-object v0, Lcom/dropbox/core/v2/team/MembersSetProfileError;->SET_PROFILE_DISALLOWED:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    goto :goto_1

    .line 166
    :cond_9
    const-string/jumbo v2, "param_cannot_be_empty"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 167
    sget-object v0, Lcom/dropbox/core/v2/team/MembersSetProfileError;->PARAM_CANNOT_BE_EMPTY:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    goto :goto_1

    .line 169
    :cond_a
    const-string/jumbo v2, "persistent_id_disabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 170
    sget-object v0, Lcom/dropbox/core/v2/team/MembersSetProfileError;->PERSISTENT_ID_DISABLED:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    goto :goto_1

    .line 172
    :cond_b
    const-string/jumbo v2, "persistent_id_used_by_other_user"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 173
    sget-object v0, Lcom/dropbox/core/v2/team/MembersSetProfileError;->PERSISTENT_ID_USED_BY_OTHER_USER:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    goto :goto_1

    .line 176
    :cond_c
    sget-object v0, Lcom/dropbox/core/v2/team/MembersSetProfileError;->OTHER:Lcom/dropbox/core/v2/team/MembersSetProfileError;

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
    .line 75
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/MembersSetProfileError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/MembersSetProfileError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/MembersSetProfileError;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 80
    sget-object v0, Lcom/dropbox/core/v2/team/MembersSetProfileError$1;->$SwitchMap$com$dropbox$core$v2$team$MembersSetProfileError:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/MembersSetProfileError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 122
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 125
    :goto_0
    return-void

    .line 82
    :pswitch_0
    const-string/jumbo v0, "user_not_found"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :pswitch_1
    const-string/jumbo v0, "user_not_in_team"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :pswitch_2
    const-string/jumbo v0, "external_id_and_new_external_id_unsafe"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :pswitch_3
    const-string/jumbo v0, "no_new_data_specified"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :pswitch_4
    const-string/jumbo v0, "email_reserved_for_other_user"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :pswitch_5
    const-string/jumbo v0, "external_id_used_by_other_user"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :pswitch_6
    const-string/jumbo v0, "set_profile_disallowed"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :pswitch_7
    const-string/jumbo v0, "param_cannot_be_empty"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :pswitch_8
    const-string/jumbo v0, "persistent_id_disabled"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :pswitch_9
    const-string/jumbo v0, "persistent_id_used_by_other_user"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
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
    .line 75
    check-cast p1, Lcom/dropbox/core/v2/team/MembersSetProfileError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/MembersSetProfileError$Serializer;->serialize(Lcom/dropbox/core/v2/team/MembersSetProfileError;Lcom/d/a/a/g;)V

    return-void
.end method
