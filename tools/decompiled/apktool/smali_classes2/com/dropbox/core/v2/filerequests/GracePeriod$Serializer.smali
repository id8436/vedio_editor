.class Lcom/dropbox/core/v2/filerequests/GracePeriod$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "GracePeriod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/filerequests/GracePeriod;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/filerequests/GracePeriod$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/dropbox/core/v2/filerequests/GracePeriod$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/filerequests/GracePeriod$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/filerequests/GracePeriod$Serializer;->INSTANCE:Lcom/dropbox/core/v2/filerequests/GracePeriod$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/filerequests/GracePeriod;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 75
    const/4 v1, 0x1

    .line 76
    invoke-static {p1}, Lcom/dropbox/core/v2/filerequests/GracePeriod$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 84
    :goto_0
    if-nez v0, :cond_1

    .line 85
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    const/4 v1, 0x0

    .line 81
    invoke-static {p1}, Lcom/dropbox/core/v2/filerequests/GracePeriod$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 82
    invoke-static {p1}, Lcom/dropbox/core/v2/filerequests/GracePeriod$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 87
    :cond_1
    const-string/jumbo v2, "one_day"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 88
    sget-object v0, Lcom/dropbox/core/v2/filerequests/GracePeriod;->ONE_DAY:Lcom/dropbox/core/v2/filerequests/GracePeriod;

    .line 105
    :goto_1
    if-nez v1, :cond_2

    .line 106
    invoke-static {p1}, Lcom/dropbox/core/v2/filerequests/GracePeriod$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 107
    invoke-static {p1}, Lcom/dropbox/core/v2/filerequests/GracePeriod$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 109
    :cond_2
    return-object v0

    .line 90
    :cond_3
    const-string/jumbo v2, "two_days"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 91
    sget-object v0, Lcom/dropbox/core/v2/filerequests/GracePeriod;->TWO_DAYS:Lcom/dropbox/core/v2/filerequests/GracePeriod;

    goto :goto_1

    .line 93
    :cond_4
    const-string/jumbo v2, "seven_days"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 94
    sget-object v0, Lcom/dropbox/core/v2/filerequests/GracePeriod;->SEVEN_DAYS:Lcom/dropbox/core/v2/filerequests/GracePeriod;

    goto :goto_1

    .line 96
    :cond_5
    const-string/jumbo v2, "thirty_days"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 97
    sget-object v0, Lcom/dropbox/core/v2/filerequests/GracePeriod;->THIRTY_DAYS:Lcom/dropbox/core/v2/filerequests/GracePeriod;

    goto :goto_1

    .line 99
    :cond_6
    const-string/jumbo v2, "always"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 100
    sget-object v0, Lcom/dropbox/core/v2/filerequests/GracePeriod;->ALWAYS:Lcom/dropbox/core/v2/filerequests/GracePeriod;

    goto :goto_1

    .line 103
    :cond_7
    sget-object v0, Lcom/dropbox/core/v2/filerequests/GracePeriod;->OTHER:Lcom/dropbox/core/v2/filerequests/GracePeriod;

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
    .line 37
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/filerequests/GracePeriod$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/filerequests/GracePeriod;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/filerequests/GracePeriod;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 42
    sget-object v0, Lcom/dropbox/core/v2/filerequests/GracePeriod$1;->$SwitchMap$com$dropbox$core$v2$filerequests$GracePeriod:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/filerequests/GracePeriod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 64
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 67
    :goto_0
    return-void

    .line 44
    :pswitch_0
    const-string/jumbo v0, "one_day"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :pswitch_1
    const-string/jumbo v0, "two_days"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :pswitch_2
    const-string/jumbo v0, "seven_days"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :pswitch_3
    const-string/jumbo v0, "thirty_days"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :pswitch_4
    const-string/jumbo v0, "always"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 42
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
    .line 37
    check-cast p1, Lcom/dropbox/core/v2/filerequests/GracePeriod;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/filerequests/GracePeriod$Serializer;->serialize(Lcom/dropbox/core/v2/filerequests/GracePeriod;Lcom/d/a/a/g;)V

    return-void
.end method
