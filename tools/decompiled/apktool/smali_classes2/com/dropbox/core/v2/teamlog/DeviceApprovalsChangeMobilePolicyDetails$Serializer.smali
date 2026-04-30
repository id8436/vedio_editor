.class Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "DeviceApprovalsChangeMobilePolicyDetails.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 186
    new-instance v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 209
    .line 210
    if-nez p2, :cond_5

    .line 211
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 212
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 214
    :goto_0
    if-nez v0, :cond_4

    move-object v2, v1

    .line 217
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v3, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v3, :cond_2

    .line 218
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 220
    const-string/jumbo v3, "new_value"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 221
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy;

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2
    move-object v2, v1

    move-object v1, v0

    .line 229
    goto :goto_1

    .line 223
    :cond_0
    const-string/jumbo v3, "previous_value"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy;

    move-object v1, v2

    goto :goto_2

    .line 227
    :cond_1
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    .line 230
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails;

    invoke-direct {v0, v2, v1}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails;-><init>(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy;Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy;)V

    .line 235
    if-nez p2, :cond_3

    .line 236
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 238
    :cond_3
    return-object v0

    .line 233
    :cond_4
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

    :cond_5
    move-object v0, v1

    goto :goto_0
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
    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 190
    if-nez p3, :cond_0

    .line 191
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 193
    :cond_0
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy;

    if-eqz v0, :cond_1

    .line 194
    const-string/jumbo v0, "new_value"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 195
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 197
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy;

    if-eqz v0, :cond_2

    .line 198
    const-string/jumbo v0, "previous_value"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 199
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 201
    :cond_2
    if-nez p3, :cond_3

    .line 202
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 204
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
    .line 185
    check-cast p1, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails;Lcom/d/a/a/g;Z)V

    return-void
.end method
