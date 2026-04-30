.class Lcom/dropbox/core/v2/team/TeamGetInfoResult$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "TeamGetInfoResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/TeamGetInfoResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/TeamGetInfoResult$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lcom/dropbox/core/v2/team/TeamGetInfoResult$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamGetInfoResult$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/TeamGetInfoResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamGetInfoResult$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/team/TeamGetInfoResult;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 183
    .line 184
    if-nez p2, :cond_d

    .line 185
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamGetInfoResult$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 186
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamGetInfoResult$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 188
    :goto_0
    if-nez v0, :cond_c

    move-object v6, v8

    move-object v4, v8

    move-object v3, v8

    move-object v2, v8

    .line 194
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_5

    .line 195
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 197
    const-string/jumbo v1, "name"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v4

    move-object v2, v0

    move-object v0, v6

    :goto_2
    move-object v6, v0

    move-object v4, v1

    .line 215
    goto :goto_1

    .line 200
    :cond_0
    const-string/jumbo v1, "team_id"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v4

    move-object v3, v0

    move-object v0, v6

    goto :goto_2

    .line 203
    :cond_1
    const-string/jumbo v1, "num_licensed_users"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt32()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    .line 206
    :cond_2
    const-string/jumbo v1, "num_provisioned_users"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 207
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt32()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    move-object v1, v4

    goto :goto_2

    .line 209
    :cond_3
    const-string/jumbo v1, "policies"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 210
    sget-object v0, Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies$Serializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies;

    move-object v8, v0

    move-object v1, v4

    move-object v0, v6

    goto :goto_2

    .line 213
    :cond_4
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamGetInfoResult$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v6

    move-object v1, v4

    goto :goto_2

    .line 216
    :cond_5
    if-nez v2, :cond_6

    .line 217
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"name\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_6
    if-nez v3, :cond_7

    .line 220
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"team_id\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_7
    if-nez v4, :cond_8

    .line 223
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"num_licensed_users\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_8
    if-nez v6, :cond_9

    .line 226
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"num_provisioned_users\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_9
    if-nez v8, :cond_a

    .line 229
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"policies\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_a
    new-instance v1, Lcom/dropbox/core/v2/team/TeamGetInfoResult;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct/range {v1 .. v8}, Lcom/dropbox/core/v2/team/TeamGetInfoResult;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/dropbox/core/v2/teampolicies/TeamMemberPolicies;)V

    .line 236
    if-nez p2, :cond_b

    .line 237
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamGetInfoResult$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 239
    :cond_b
    return-object v1

    .line 234
    :cond_c
    new-instance v1, Lcom/d/a/a/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No subtype found that matches tag: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v1

    :cond_d
    move-object v0, v8

    goto/16 :goto_0
.end method

.method public bridge synthetic deserialize(Lcom/d/a/a/k;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/TeamGetInfoResult$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/team/TeamGetInfoResult;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/TeamGetInfoResult;Lcom/d/a/a/g;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 162
    if-nez p3, :cond_0

    .line 163
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 165
    :cond_0
    const-string/jumbo v0, "name"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/TeamGetInfoResult;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 167
    const-string/jumbo v0, "team_id"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/TeamGetInfoResult;->teamId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 169
    const-string/jumbo v0, "num_licensed_users"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt32()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-wide v2, p1, Lcom/dropbox/core/v2/team/TeamGetInfoResult;->numLicensedUsers:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 171
    const-string/jumbo v0, "num_provisioned_users"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt32()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-wide v2, p1, Lcom/dropbox/core/v2/team/TeamGetInfoResult;->numProvisionedUsers:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 173
    const-string/jumbo v0, "policies"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 174
    sget-object v0, Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/team/TeamGetInfoResult;->policies:Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies$Serializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 175
    if-nez p3, :cond_1

    .line 176
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 178
    :cond_1
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/d/a/a/g;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 157
    check-cast p1, Lcom/dropbox/core/v2/team/TeamGetInfoResult;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/team/TeamGetInfoResult$Serializer;->serialize(Lcom/dropbox/core/v2/team/TeamGetInfoResult;Lcom/d/a/a/g;Z)V

    return-void
.end method
