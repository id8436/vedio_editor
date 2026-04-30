.class public final enum Lcom/adobe/decoderfactory/AudioInfo$SampleType;
.super Ljava/lang/Enum;
.source "AudioInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/decoderfactory/AudioInfo$SampleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/decoderfactory/AudioInfo$SampleType;

.field public static final enum Signed16Bit:Lcom/adobe/decoderfactory/AudioInfo$SampleType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/adobe/decoderfactory/AudioInfo$SampleType;

    const-string/jumbo v1, "Signed16Bit"

    invoke-direct {v0, v1, v2}, Lcom/adobe/decoderfactory/AudioInfo$SampleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/decoderfactory/AudioInfo$SampleType;->Signed16Bit:Lcom/adobe/decoderfactory/AudioInfo$SampleType;

    .line 7
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/adobe/decoderfactory/AudioInfo$SampleType;

    sget-object v1, Lcom/adobe/decoderfactory/AudioInfo$SampleType;->Signed16Bit:Lcom/adobe/decoderfactory/AudioInfo$SampleType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/adobe/decoderfactory/AudioInfo$SampleType;->$VALUES:[Lcom/adobe/decoderfactory/AudioInfo$SampleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/decoderfactory/AudioInfo$SampleType;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/adobe/decoderfactory/AudioInfo$SampleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/decoderfactory/AudioInfo$SampleType;

    return-object v0
.end method

.method public static values()[Lcom/adobe/decoderfactory/AudioInfo$SampleType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/adobe/decoderfactory/AudioInfo$SampleType;->$VALUES:[Lcom/adobe/decoderfactory/AudioInfo$SampleType;

    invoke-virtual {v0}, [Lcom/adobe/decoderfactory/AudioInfo$SampleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/decoderfactory/AudioInfo$SampleType;

    return-object v0
.end method
