.class public final enum Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;
.super Ljava/lang/Enum;
.source "BehanceSDKGradientSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;

.field public static final enum arrows:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;

.field public static final enum box:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 308
    new-instance v0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;

    const-string/jumbo v1, "arrows"

    invoke-direct {v0, v1, v2}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;->arrows:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;

    new-instance v0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;

    const-string/jumbo v1, "box"

    invoke-direct {v0, v1, v3}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;->box:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;

    .line 307
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;

    sget-object v1, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;->arrows:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;->box:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;->$VALUES:[Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;

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
    .line 307
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;
    .locals 1

    .prologue
    .line 307
    const-class v0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;

    return-object v0
.end method

.method public static values()[Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;
    .locals 1

    .prologue
    .line 307
    sget-object v0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;->$VALUES:[Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;

    invoke-virtual {v0}, [Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;

    return-object v0
.end method
