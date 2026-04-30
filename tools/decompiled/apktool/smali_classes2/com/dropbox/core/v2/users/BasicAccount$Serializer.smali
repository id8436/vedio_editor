.class Lcom/dropbox/core/v2/users/BasicAccount$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "BasicAccount.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/users/BasicAccount;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/users/BasicAccount$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 322
    new-instance v0, Lcom/dropbox/core/v2/users/BasicAccount$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/users/BasicAccount$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/users/BasicAccount$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/BasicAccount$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/users/BasicAccount;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 357
    .line 358
    if-nez p2, :cond_11

    .line 359
    invoke-static {p1}, Lcom/dropbox/core/v2/users/BasicAccount$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 360
    invoke-static {p1}, Lcom/dropbox/core/v2/users/BasicAccount$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 362
    :goto_0
    if-nez v0, :cond_10

    move-object v7, v8

    move-object v6, v8

    move-object v5, v8

    move-object v4, v8

    move-object v3, v8

    move-object v2, v8

    move-object v1, v8

    .line 371
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v9, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v9, :cond_8

    .line 372
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 373
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 374
    const-string/jumbo v9, "account_id"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 375
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v5

    move-object v5, v0

    move-object v0, v6

    move-object v10, v2

    move-object v2, v4

    move-object v4, v10

    :goto_2
    move-object v6, v0

    move-object v10, v1

    move-object v1, v5

    move-object v5, v10

    move-object v11, v4

    move-object v4, v2

    move-object v2, v11

    .line 401
    goto :goto_1

    .line 377
    :cond_0
    const-string/jumbo v9, "name"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 378
    sget-object v0, Lcom/dropbox/core/v2/users/Name$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/Name$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/users/Name$Serializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/users/Name;

    move-object v2, v4

    move-object v4, v0

    move-object v0, v6

    move-object v10, v5

    move-object v5, v1

    move-object v1, v10

    goto :goto_2

    .line 380
    :cond_1
    const-string/jumbo v9, "email"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 381
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    move-object v0, v6

    move-object v10, v4

    move-object v4, v2

    move-object v2, v10

    move-object v11, v5

    move-object v5, v1

    move-object v1, v11

    goto :goto_2

    .line 383
    :cond_2
    const-string/jumbo v9, "email_verified"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 384
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move-object v4, v2

    move-object v2, v0

    move-object v0, v6

    move-object v10, v5

    move-object v5, v1

    move-object v1, v10

    goto :goto_2

    .line 386
    :cond_3
    const-string/jumbo v9, "disabled"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 387
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move-object v5, v1

    move-object v1, v0

    move-object v0, v6

    move-object v10, v2

    move-object v2, v4

    move-object v4, v10

    goto :goto_2

    .line 389
    :cond_4
    const-string/jumbo v9, "is_teammate"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 390
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move-object v10, v5

    move-object v5, v1

    move-object v1, v10

    move-object v11, v2

    move-object v2, v4

    move-object v4, v11

    goto/16 :goto_2

    .line 392
    :cond_5
    const-string/jumbo v9, "profile_photo_url"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 393
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    move-object v0, v6

    move-object v10, v5

    move-object v5, v1

    move-object v1, v10

    move-object v11, v2

    move-object v2, v4

    move-object v4, v11

    goto/16 :goto_2

    .line 395
    :cond_6
    const-string/jumbo v9, "team_member_id"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 396
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    move-object v0, v6

    move-object v10, v5

    move-object v5, v1

    move-object v1, v10

    move-object v11, v2

    move-object v2, v4

    move-object v4, v11

    goto/16 :goto_2

    .line 399
    :cond_7
    invoke-static {p1}, Lcom/dropbox/core/v2/users/BasicAccount$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v6

    move-object v10, v5

    move-object v5, v1

    move-object v1, v10

    move-object v11, v2

    move-object v2, v4

    move-object v4, v11

    goto/16 :goto_2

    .line 402
    :cond_8
    if-nez v1, :cond_9

    .line 403
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"account_id\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_9
    if-nez v2, :cond_a

    .line 406
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"name\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_a
    if-nez v3, :cond_b

    .line 409
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"email\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_b
    if-nez v4, :cond_c

    .line 412
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"email_verified\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 414
    :cond_c
    if-nez v5, :cond_d

    .line 415
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"disabled\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_d
    if-nez v6, :cond_e

    .line 418
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"is_teammate\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_e
    new-instance v0, Lcom/dropbox/core/v2/users/BasicAccount;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/users/BasicAccount;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/users/Name;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V

    .line 425
    if-nez p2, :cond_f

    .line 426
    invoke-static {p1}, Lcom/dropbox/core/v2/users/BasicAccount$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 428
    :cond_f
    return-object v0

    .line 423
    :cond_10
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

    :cond_11
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
    .line 321
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/users/BasicAccount$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/users/BasicAccount;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/users/BasicAccount;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 326
    if-nez p3, :cond_0

    .line 327
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 329
    :cond_0
    const-string/jumbo v0, "account_id"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 330
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/users/BasicAccount;->accountId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 331
    const-string/jumbo v0, "name"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 332
    sget-object v0, Lcom/dropbox/core/v2/users/Name$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/Name$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/users/BasicAccount;->name:Lcom/dropbox/core/v2/users/Name;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/users/Name$Serializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 333
    const-string/jumbo v0, "email"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 334
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/users/BasicAccount;->email:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 335
    const-string/jumbo v0, "email_verified"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 336
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/users/BasicAccount;->emailVerified:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 337
    const-string/jumbo v0, "disabled"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 338
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/users/BasicAccount;->disabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 339
    const-string/jumbo v0, "is_teammate"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 340
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/users/BasicAccount;->isTeammate:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 341
    iget-object v0, p1, Lcom/dropbox/core/v2/users/BasicAccount;->profilePhotoUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 342
    const-string/jumbo v0, "profile_photo_url"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 343
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/users/BasicAccount;->profilePhotoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 345
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/users/BasicAccount;->teamMemberId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 346
    const-string/jumbo v0, "team_member_id"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 347
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/users/BasicAccount;->teamMemberId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 349
    :cond_2
    if-nez p3, :cond_3

    .line 350
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 352
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
    .line 321
    check-cast p1, Lcom/dropbox/core/v2/users/BasicAccount;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/users/BasicAccount$Serializer;->serialize(Lcom/dropbox/core/v2/users/BasicAccount;Lcom/d/a/a/g;Z)V

    return-void
.end method
