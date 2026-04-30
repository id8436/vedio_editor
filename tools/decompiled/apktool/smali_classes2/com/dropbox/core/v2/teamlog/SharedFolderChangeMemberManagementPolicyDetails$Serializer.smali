.class Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "SharedFolderChangeMemberManagementPolicyDetails.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 265
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 294
    .line 295
    if-nez p2, :cond_b

    .line 296
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 297
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 299
    :goto_0
    if-nez v0, :cond_a

    move-object v6, v7

    move-object v5, v7

    move-object v4, v7

    move-object v2, v7

    .line 305
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_5

    .line 306
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 308
    const-string/jumbo v1, "target_asset_index"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    :goto_2
    move-object v2, v0

    .line 326
    goto :goto_1

    .line 311
    :cond_0
    const-string/jumbo v1, "original_folder_name"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 312
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    move-object v0, v2

    goto :goto_2

    .line 314
    :cond_1
    const-string/jumbo v1, "new_value"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 315
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderMembershipManagementPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedFolderMembershipManagementPolicy$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teamlog/SharedFolderMembershipManagementPolicy$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamlog/SharedFolderMembershipManagementPolicy;

    move-result-object v5

    move-object v0, v2

    goto :goto_2

    .line 317
    :cond_2
    const-string/jumbo v1, "shared_folder_type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 318
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    move-object v0, v2

    goto :goto_2

    .line 320
    :cond_3
    const-string/jumbo v1, "previous_value"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 321
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderMembershipManagementPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedFolderMembershipManagementPolicy$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/SharedFolderMembershipManagementPolicy;

    move-object v7, v0

    move-object v0, v2

    goto :goto_2

    .line 324
    :cond_4
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v2

    goto :goto_2

    .line 327
    :cond_5
    if-nez v2, :cond_6

    .line 328
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"target_asset_index\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_6
    if-nez v4, :cond_7

    .line 331
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"original_folder_name\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_7
    if-nez v5, :cond_8

    .line 334
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"new_value\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_8
    new-instance v1, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct/range {v1 .. v7}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails;-><init>(JLjava/lang/String;Lcom/dropbox/core/v2/teamlog/SharedFolderMembershipManagementPolicy;Ljava/lang/String;Lcom/dropbox/core/v2/teamlog/SharedFolderMembershipManagementPolicy;)V

    .line 341
    if-nez p2, :cond_9

    .line 342
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 344
    :cond_9
    return-object v1

    .line 339
    :cond_a
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

    :cond_b
    move-object v0, v7

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
    .line 264
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails;Lcom/d/a/a/g;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 269
    if-nez p3, :cond_0

    .line 270
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 272
    :cond_0
    const-string/jumbo v0, "target_asset_index"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 273
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-wide v2, p1, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails;->targetAssetIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 274
    const-string/jumbo v0, "original_folder_name"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 275
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails;->originalFolderName:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 276
    const-string/jumbo v0, "new_value"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 277
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderMembershipManagementPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedFolderMembershipManagementPolicy$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/SharedFolderMembershipManagementPolicy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teamlog/SharedFolderMembershipManagementPolicy$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SharedFolderMembershipManagementPolicy;Lcom/d/a/a/g;)V

    .line 278
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails;->sharedFolderType:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 279
    const-string/jumbo v0, "shared_folder_type"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 280
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails;->sharedFolderType:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 282
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/SharedFolderMembershipManagementPolicy;

    if-eqz v0, :cond_2

    .line 283
    const-string/jumbo v0, "previous_value"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 284
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderMembershipManagementPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedFolderMembershipManagementPolicy$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/SharedFolderMembershipManagementPolicy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 286
    :cond_2
    if-nez p3, :cond_3

    .line 287
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 289
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
    .line 264
    check-cast p1, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails;Lcom/d/a/a/g;Z)V

    return-void
.end method
