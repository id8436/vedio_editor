.class Lcom/dropbox/core/v2/sharing/GroupInfo$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "GroupInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/GroupInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/GroupInfo$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 305
    new-instance v0, Lcom/dropbox/core/v2/sharing/GroupInfo$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/GroupInfo$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/GroupInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GroupInfo$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/sharing/GroupInfo;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 342
    .line 343
    if-nez p2, :cond_13

    .line 344
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GroupInfo$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 345
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GroupInfo$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 347
    :goto_0
    if-nez v0, :cond_12

    move-object v8, v9

    move-object v7, v9

    move-object v6, v9

    move-object v5, v9

    move-object v4, v9

    move-object v3, v9

    move-object v2, v9

    move-object v1, v9

    .line 357
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v10, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v10, :cond_9

    .line 358
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 359
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 360
    const-string/jumbo v10, "group_name"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 361
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v6

    move-object v6, v0

    move-object v0, v7

    move-object v11, v2

    move-object v2, v5

    move-object v5, v11

    :goto_2
    move-object v7, v0

    move-object v11, v1

    move-object v1, v6

    move-object v6, v11

    move-object v12, v5

    move-object v5, v2

    move-object v2, v12

    .line 390
    goto :goto_1

    .line 363
    :cond_0
    const-string/jumbo v10, "group_id"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 364
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v5

    move-object v5, v0

    move-object v0, v7

    move-object v11, v6

    move-object v6, v1

    move-object v1, v11

    goto :goto_2

    .line 366
    :cond_1
    const-string/jumbo v10, "group_management_type"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 367
    sget-object v0, Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    move-result-object v3

    move-object v0, v7

    move-object v11, v6

    move-object v6, v1

    move-object v1, v11

    move-object v12, v2

    move-object v2, v5

    move-object v5, v12

    goto :goto_2

    .line 369
    :cond_2
    const-string/jumbo v10, "group_type"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 370
    sget-object v0, Lcom/dropbox/core/v2/teamcommon/GroupType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamcommon/GroupType$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teamcommon/GroupType$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamcommon/GroupType;

    move-result-object v4

    move-object v0, v7

    move-object v11, v6

    move-object v6, v1

    move-object v1, v11

    move-object v12, v2

    move-object v2, v5

    move-object v5, v12

    goto :goto_2

    .line 372
    :cond_3
    const-string/jumbo v10, "is_member"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 373
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move-object v5, v2

    move-object v2, v0

    move-object v0, v7

    move-object v11, v6

    move-object v6, v1

    move-object v1, v11

    goto :goto_2

    .line 375
    :cond_4
    const-string/jumbo v10, "is_owner"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 376
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move-object v6, v1

    move-object v1, v0

    move-object v0, v7

    move-object v11, v2

    move-object v2, v5

    move-object v5, v11

    goto/16 :goto_2

    .line 378
    :cond_5
    const-string/jumbo v10, "same_team"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 379
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move-object v11, v6

    move-object v6, v1

    move-object v1, v11

    move-object v12, v2

    move-object v2, v5

    move-object v5, v12

    goto/16 :goto_2

    .line 381
    :cond_6
    const-string/jumbo v10, "group_external_id"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 382
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    move-object v0, v7

    move-object v11, v6

    move-object v6, v1

    move-object v1, v11

    move-object v12, v2

    move-object v2, v5

    move-object v5, v12

    goto/16 :goto_2

    .line 384
    :cond_7
    const-string/jumbo v10, "member_count"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 385
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt32()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    move-object v9, v0

    move-object v0, v7

    move-object v11, v6

    move-object v6, v1

    move-object v1, v11

    move-object v12, v2

    move-object v2, v5

    move-object v5, v12

    goto/16 :goto_2

    .line 388
    :cond_8
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GroupInfo$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v7

    move-object v11, v6

    move-object v6, v1

    move-object v1, v11

    move-object v12, v2

    move-object v2, v5

    move-object v5, v12

    goto/16 :goto_2

    .line 391
    :cond_9
    if-nez v1, :cond_a

    .line 392
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"group_name\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_a
    if-nez v2, :cond_b

    .line 395
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"group_id\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_b
    if-nez v3, :cond_c

    .line 398
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"group_management_type\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_c
    if-nez v4, :cond_d

    .line 401
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"group_type\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_d
    if-nez v5, :cond_e

    .line 404
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"is_member\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_e
    if-nez v6, :cond_f

    .line 407
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"is_owner\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_f
    if-nez v7, :cond_10

    .line 410
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"same_team\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_10
    new-instance v0, Lcom/dropbox/core/v2/sharing/GroupInfo;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-direct/range {v0 .. v9}, Lcom/dropbox/core/v2/sharing/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;Lcom/dropbox/core/v2/teamcommon/GroupType;ZZZLjava/lang/String;Ljava/lang/Long;)V

    .line 417
    if-nez p2, :cond_11

    .line 418
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GroupInfo$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 420
    :cond_11
    return-object v0

    .line 415
    :cond_12
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

    :cond_13
    move-object v0, v9

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
    .line 304
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/GroupInfo$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/sharing/GroupInfo;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/GroupInfo;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 309
    if-nez p3, :cond_0

    .line 310
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 312
    :cond_0
    const-string/jumbo v0, "group_name"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 313
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GroupInfo;->access$000(Lcom/dropbox/core/v2/sharing/GroupInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 314
    const-string/jumbo v0, "group_id"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 315
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GroupInfo;->access$100(Lcom/dropbox/core/v2/sharing/GroupInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 316
    const-string/jumbo v0, "group_management_type"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 317
    sget-object v0, Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GroupInfo;->access$200(Lcom/dropbox/core/v2/sharing/GroupInfo;)Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;->serialize(Lcom/dropbox/core/v2/teamcommon/GroupManagementType;Lcom/d/a/a/g;)V

    .line 318
    const-string/jumbo v0, "group_type"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 319
    sget-object v0, Lcom/dropbox/core/v2/teamcommon/GroupType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamcommon/GroupType$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupType:Lcom/dropbox/core/v2/teamcommon/GroupType;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teamcommon/GroupType$Serializer;->serialize(Lcom/dropbox/core/v2/teamcommon/GroupType;Lcom/d/a/a/g;)V

    .line 320
    const-string/jumbo v0, "is_member"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 321
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/sharing/GroupInfo;->isMember:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 322
    const-string/jumbo v0, "is_owner"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 323
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/sharing/GroupInfo;->isOwner:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 324
    const-string/jumbo v0, "same_team"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 325
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/sharing/GroupInfo;->sameTeam:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 326
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GroupInfo;->access$300(Lcom/dropbox/core/v2/sharing/GroupInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 327
    const-string/jumbo v0, "group_external_id"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 328
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GroupInfo;->access$400(Lcom/dropbox/core/v2/sharing/GroupInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 330
    :cond_1
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GroupInfo;->access$500(Lcom/dropbox/core/v2/sharing/GroupInfo;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 331
    const-string/jumbo v0, "member_count"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 332
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt32()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GroupInfo;->access$600(Lcom/dropbox/core/v2/sharing/GroupInfo;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 334
    :cond_2
    if-nez p3, :cond_3

    .line 335
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 337
    :cond_3
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
    .line 304
    check-cast p1, Lcom/dropbox/core/v2/sharing/GroupInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/GroupInfo$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/GroupInfo;Lcom/d/a/a/g;Z)V

    return-void
.end method
