.class public final enum Lcom/adobe/audiomixer/AudioFilter;
.super Ljava/lang/Enum;
.source "AudioFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/audiomixer/AudioFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/audiomixer/AudioFilter;

.field public static final enum AutoDuck:Lcom/adobe/audiomixer/AudioFilter;

.field public static final enum FadeIn:Lcom/adobe/audiomixer/AudioFilter;

.field public static final enum FadeOut:Lcom/adobe/audiomixer/AudioFilter;

.field public static final enum Mute:Lcom/adobe/audiomixer/AudioFilter;

.field public static final enum SpeechLeveler:Lcom/adobe/audiomixer/AudioFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/adobe/audiomixer/AudioFilter;

    const-string/jumbo v1, "FadeIn"

    invoke-direct {v0, v1, v2}, Lcom/adobe/audiomixer/AudioFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/audiomixer/AudioFilter;->FadeIn:Lcom/adobe/audiomixer/AudioFilter;

    .line 8
    new-instance v0, Lcom/adobe/audiomixer/AudioFilter;

    const-string/jumbo v1, "FadeOut"

    invoke-direct {v0, v1, v3}, Lcom/adobe/audiomixer/AudioFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/audiomixer/AudioFilter;->FadeOut:Lcom/adobe/audiomixer/AudioFilter;

    .line 9
    new-instance v0, Lcom/adobe/audiomixer/AudioFilter;

    const-string/jumbo v1, "SpeechLeveler"

    invoke-direct {v0, v1, v4}, Lcom/adobe/audiomixer/AudioFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/audiomixer/AudioFilter;->SpeechLeveler:Lcom/adobe/audiomixer/AudioFilter;

    .line 10
    new-instance v0, Lcom/adobe/audiomixer/AudioFilter;

    const-string/jumbo v1, "AutoDuck"

    invoke-direct {v0, v1, v5}, Lcom/adobe/audiomixer/AudioFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/audiomixer/AudioFilter;->AutoDuck:Lcom/adobe/audiomixer/AudioFilter;

    .line 11
    new-instance v0, Lcom/adobe/audiomixer/AudioFilter;

    const-string/jumbo v1, "Mute"

    invoke-direct {v0, v1, v6}, Lcom/adobe/audiomixer/AudioFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/audiomixer/AudioFilter;->Mute:Lcom/adobe/audiomixer/AudioFilter;

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/adobe/audiomixer/AudioFilter;

    sget-object v1, Lcom/adobe/audiomixer/AudioFilter;->FadeIn:Lcom/adobe/audiomixer/AudioFilter;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/audiomixer/AudioFilter;->FadeOut:Lcom/adobe/audiomixer/AudioFilter;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/audiomixer/AudioFilter;->SpeechLeveler:Lcom/adobe/audiomixer/AudioFilter;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/audiomixer/AudioFilter;->AutoDuck:Lcom/adobe/audiomixer/AudioFilter;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adobe/audiomixer/AudioFilter;->Mute:Lcom/adobe/audiomixer/AudioFilter;

    aput-object v1, v0, v6

    sput-object v0, Lcom/adobe/audiomixer/AudioFilter;->$VALUES:[Lcom/adobe/audiomixer/AudioFilter;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/audiomixer/AudioFilter;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/adobe/audiomixer/AudioFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/audiomixer/AudioFilter;

    return-object v0
.end method

.method public static values()[Lcom/adobe/audiomixer/AudioFilter;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/adobe/audiomixer/AudioFilter;->$VALUES:[Lcom/adobe/audiomixer/AudioFilter;

    invoke-virtual {v0}, [Lcom/adobe/audiomixer/AudioFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/audiomixer/AudioFilter;

    return-object v0
.end method
