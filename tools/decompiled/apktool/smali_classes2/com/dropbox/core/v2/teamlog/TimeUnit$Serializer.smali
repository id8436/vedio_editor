.class Lcom/dropbox/core/v2/teamlog/TimeUnit$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "TimeUnit.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/TimeUnit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/TimeUnit$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/dropbox/core/v2/teamlog/TimeUnit$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/TimeUnit$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/TimeUnit$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TimeUnit$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamlog/TimeUnit;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 90
    const/4 v1, 0x1

    .line 91
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/TimeUnit$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 99
    :goto_0
    if-nez v0, :cond_1

    .line 100
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    const/4 v1, 0x0

    .line 96
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/TimeUnit$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 97
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/TimeUnit$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_1
    const-string/jumbo v2, "milliseconds"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 103
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TimeUnit;->MILLISECONDS:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    .line 129
    :goto_1
    if-nez v1, :cond_2

    .line 130
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/TimeUnit$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 131
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/TimeUnit$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 133
    :cond_2
    return-object v0

    .line 105
    :cond_3
    const-string/jumbo v2, "seconds"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 106
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TimeUnit;->SECONDS:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    goto :goto_1

    .line 108
    :cond_4
    const-string/jumbo v2, "minutes"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 109
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TimeUnit;->MINUTES:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    goto :goto_1

    .line 111
    :cond_5
    const-string/jumbo v2, "hours"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 112
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TimeUnit;->HOURS:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    goto :goto_1

    .line 114
    :cond_6
    const-string/jumbo v2, "days"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 115
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TimeUnit;->DAYS:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    goto :goto_1

    .line 117
    :cond_7
    const-string/jumbo v2, "weeks"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 118
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TimeUnit;->WEEKS:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    goto :goto_1

    .line 120
    :cond_8
    const-string/jumbo v2, "months"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 121
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TimeUnit;->MONTHS:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    goto :goto_1

    .line 123
    :cond_9
    const-string/jumbo v2, "years"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 124
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TimeUnit;->YEARS:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    goto :goto_1

    .line 127
    :cond_a
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TimeUnit;->OTHER:Lcom/dropbox/core/v2/teamlog/TimeUnit;

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
    .line 40
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/TimeUnit$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamlog/TimeUnit;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/TimeUnit;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 45
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TimeUnit$1;->$SwitchMap$com$dropbox$core$v2$teamlog$TimeUnit:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/teamlog/TimeUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 79
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 82
    :goto_0
    return-void

    .line 47
    :pswitch_0
    const-string/jumbo v0, "milliseconds"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :pswitch_1
    const-string/jumbo v0, "seconds"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :pswitch_2
    const-string/jumbo v0, "minutes"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :pswitch_3
    const-string/jumbo v0, "hours"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :pswitch_4
    const-string/jumbo v0, "days"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :pswitch_5
    const-string/jumbo v0, "weeks"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :pswitch_6
    const-string/jumbo v0, "months"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :pswitch_7
    const-string/jumbo v0, "years"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 45
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
    .line 40
    check-cast p1, Lcom/dropbox/core/v2/teamlog/TimeUnit;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/TimeUnit$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/TimeUnit;Lcom/d/a/a/g;)V

    return-void
.end method
