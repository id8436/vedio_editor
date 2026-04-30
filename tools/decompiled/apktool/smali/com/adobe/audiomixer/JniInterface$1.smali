.class synthetic Lcom/adobe/audiomixer/JniInterface$1;
.super Ljava/lang/Object;
.source "JniInterface.java"


# static fields
.field static final synthetic $SwitchMap$com$adobe$decoderfactory$AudioInfo$SampleType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 153
    invoke-static {}, Lcom/adobe/decoderfactory/AudioInfo$SampleType;->values()[Lcom/adobe/decoderfactory/AudioInfo$SampleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/adobe/audiomixer/JniInterface$1;->$SwitchMap$com$adobe$decoderfactory$AudioInfo$SampleType:[I

    :try_start_0
    sget-object v0, Lcom/adobe/audiomixer/JniInterface$1;->$SwitchMap$com$adobe$decoderfactory$AudioInfo$SampleType:[I

    sget-object v1, Lcom/adobe/decoderfactory/AudioInfo$SampleType;->Signed16Bit:Lcom/adobe/decoderfactory/AudioInfo$SampleType;

    invoke-virtual {v1}, Lcom/adobe/decoderfactory/AudioInfo$SampleType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
