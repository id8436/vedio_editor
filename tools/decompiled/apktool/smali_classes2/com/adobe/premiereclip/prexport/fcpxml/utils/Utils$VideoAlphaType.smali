.class public final enum Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAlphaType;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAlphaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAlphaType;

.field public static final enum black:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAlphaType;


# instance fields
.field private numVal:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAlphaType;

    const-string/jumbo v1, "black"

    invoke-direct {v0, v1, v2, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAlphaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAlphaType;->black:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAlphaType;

    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAlphaType;

    sget-object v1, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAlphaType;->black:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAlphaType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAlphaType;->$VALUES:[Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAlphaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput p3, p0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAlphaType;->numVal:I

    .line 51
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAlphaType;
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAlphaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAlphaType;

    return-object v0
.end method

.method public static values()[Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAlphaType;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAlphaType;->$VALUES:[Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAlphaType;

    invoke-virtual {v0}, [Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAlphaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAlphaType;

    return-object v0
.end method


# virtual methods
.method public getNumVal()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAlphaType;->numVal:I

    return v0
.end method
