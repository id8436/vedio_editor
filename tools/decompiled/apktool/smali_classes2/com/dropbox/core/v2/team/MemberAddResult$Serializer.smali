.class Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "MemberAddResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/MemberAddResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1125
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 1124
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1228
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 1230
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 1231
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    move v1, v2

    .line 1238
    :goto_0
    if-nez v0, :cond_1

    .line 1239
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 1234
    :cond_0
    const/4 v1, 0x0

    .line 1235
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 1236
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1241
    :cond_1
    const-string/jumbo v3, "success"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1243
    sget-object v0, Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/team/TeamMemberInfo;

    move-result-object v0

    .line 1244
    invoke-static {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;->success(Lcom/dropbox/core/v2/team/TeamMemberInfo;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object v0

    .line 1309
    :goto_1
    if-nez v1, :cond_2

    .line 1310
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 1311
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 1313
    :cond_2
    return-object v0

    .line 1246
    :cond_3
    const-string/jumbo v2, "team_license_limit"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1248
    const-string/jumbo v0, "team_license_limit"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 1249
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1250
    invoke-static {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;->teamLicenseLimit(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object v0

    goto :goto_1

    .line 1252
    :cond_4
    const-string/jumbo v2, "free_team_member_limit_reached"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1254
    const-string/jumbo v0, "free_team_member_limit_reached"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 1255
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1256
    invoke-static {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;->freeTeamMemberLimitReached(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object v0

    goto :goto_1

    .line 1258
    :cond_5
    const-string/jumbo v2, "user_already_on_team"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1260
    const-string/jumbo v0, "user_already_on_team"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 1261
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1262
    invoke-static {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;->userAlreadyOnTeam(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object v0

    goto :goto_1

    .line 1264
    :cond_6
    const-string/jumbo v2, "user_on_another_team"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1266
    const-string/jumbo v0, "user_on_another_team"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 1267
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1268
    invoke-static {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;->userOnAnotherTeam(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object v0

    goto :goto_1

    .line 1270
    :cond_7
    const-string/jumbo v2, "user_already_paired"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1272
    const-string/jumbo v0, "user_already_paired"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 1273
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1274
    invoke-static {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;->userAlreadyPaired(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object v0

    goto/16 :goto_1

    .line 1276
    :cond_8
    const-string/jumbo v2, "user_migration_failed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1278
    const-string/jumbo v0, "user_migration_failed"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 1279
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1280
    invoke-static {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;->userMigrationFailed(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object v0

    goto/16 :goto_1

    .line 1282
    :cond_9
    const-string/jumbo v2, "duplicate_external_member_id"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1284
    const-string/jumbo v0, "duplicate_external_member_id"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 1285
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1286
    invoke-static {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;->duplicateExternalMemberId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object v0

    goto/16 :goto_1

    .line 1288
    :cond_a
    const-string/jumbo v2, "duplicate_member_persistent_id"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1290
    const-string/jumbo v0, "duplicate_member_persistent_id"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 1291
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1292
    invoke-static {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;->duplicateMemberPersistentId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object v0

    goto/16 :goto_1

    .line 1294
    :cond_b
    const-string/jumbo v2, "persistent_id_disabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1296
    const-string/jumbo v0, "persistent_id_disabled"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 1297
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1298
    invoke-static {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;->persistentIdDisabled(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object v0

    goto/16 :goto_1

    .line 1300
    :cond_c
    const-string/jumbo v2, "user_creation_failed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1302
    const-string/jumbo v0, "user_creation_failed"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 1303
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1304
    invoke-static {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;->userCreationFailed(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object v0

    goto/16 :goto_1

    .line 1307
    :cond_d
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
    .line 1124
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/MemberAddResult;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 1129
    sget-object v0, Lcom/dropbox/core/v2/team/MemberAddResult$1;->$SwitchMap$com$dropbox$core$v2$team$MemberAddResult$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/MemberAddResult;->tag()Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1218
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/MemberAddResult;->tag()Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1131
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 1132
    const-string/jumbo v0, "success"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 1133
    sget-object v0, Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberAddResult;->access$000(Lcom/dropbox/core/v2/team/MemberAddResult;)Lcom/dropbox/core/v2/team/TeamMemberInfo;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;->serialize(Lcom/dropbox/core/v2/team/TeamMemberInfo;Lcom/d/a/a/g;Z)V

    .line 1134
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 1221
    :goto_0
    return-void

    .line 1138
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 1139
    const-string/jumbo v0, "team_license_limit"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 1140
    const-string/jumbo v0, "team_license_limit"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 1141
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberAddResult;->access$100(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 1142
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 1146
    :pswitch_2
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 1147
    const-string/jumbo v0, "free_team_member_limit_reached"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 1148
    const-string/jumbo v0, "free_team_member_limit_reached"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 1149
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberAddResult;->access$200(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 1150
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 1154
    :pswitch_3
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 1155
    const-string/jumbo v0, "user_already_on_team"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 1156
    const-string/jumbo v0, "user_already_on_team"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 1157
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberAddResult;->access$300(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 1158
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 1162
    :pswitch_4
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 1163
    const-string/jumbo v0, "user_on_another_team"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 1164
    const-string/jumbo v0, "user_on_another_team"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 1165
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberAddResult;->access$400(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 1166
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 1170
    :pswitch_5
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 1171
    const-string/jumbo v0, "user_already_paired"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 1172
    const-string/jumbo v0, "user_already_paired"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 1173
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberAddResult;->access$500(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 1174
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 1178
    :pswitch_6
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 1179
    const-string/jumbo v0, "user_migration_failed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 1180
    const-string/jumbo v0, "user_migration_failed"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 1181
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberAddResult;->access$600(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 1182
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 1186
    :pswitch_7
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 1187
    const-string/jumbo v0, "duplicate_external_member_id"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 1188
    const-string/jumbo v0, "duplicate_external_member_id"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 1189
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberAddResult;->access$700(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 1190
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 1194
    :pswitch_8
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 1195
    const-string/jumbo v0, "duplicate_member_persistent_id"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 1196
    const-string/jumbo v0, "duplicate_member_persistent_id"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 1197
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberAddResult;->access$800(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 1198
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 1202
    :pswitch_9
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 1203
    const-string/jumbo v0, "persistent_id_disabled"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 1204
    const-string/jumbo v0, "persistent_id_disabled"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 1205
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberAddResult;->access$900(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 1206
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 1210
    :pswitch_a
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 1211
    const-string/jumbo v0, "user_creation_failed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 1212
    const-string/jumbo v0, "user_creation_failed"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 1213
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberAddResult;->access$1000(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 1214
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 1129
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
        :pswitch_a
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
    .line 1124
    check-cast p1, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->serialize(Lcom/dropbox/core/v2/team/MemberAddResult;Lcom/d/a/a/g;)V

    return-void
.end method
