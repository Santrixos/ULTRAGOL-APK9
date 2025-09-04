.class public Lcom/app/thestream/activities/ActivityCalendarLigaMX;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ActivityCalendarLigaMX.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CalendarLigaMX"


# instance fields
.field private btnAnterior:Landroid/widget/Button;

.field private btnSiguiente:Landroid/widget/Button;

.field private calendarioLigaMX:Lcom/app/thestream/models/CalendarioLigaMX;

.field private geminiService:Lcom/app/thestream/utils/GeminiLigaMXService;

.field private jornadaActual:I

.field private jornadaInfoSection:Landroid/widget/LinearLayout;

.field private layoutEmpty:Landroid/widget/LinearLayout;

.field private partidoAdapter:Lcom/app/thestream/adapters/PartidoAdapter;

.field private progressLoading:Landroid/widget/ProgressBar;

.field private recyclerPartidos:Landroidx/recyclerview/widget/RecyclerView;

.field private statsFooter:Landroid/widget/LinearLayout;

.field private toolbar:Landroidx/appcompat/widget/Toolbar;

.field private tvJornadaFechas:Landroid/widget/TextView;

.field private tvJornadaInfo:Landroid/widget/TextView;

.field private tvJornadaNumero:Landroid/widget/TextView;

.field private tvJornadaTipo:Landroid/widget/TextView;

.field private tvTotalJornadas:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->jornadaActual:I

    return-void
.end method

.method static synthetic access$000(Lcom/app/thestream/activities/ActivityCalendarLigaMX;)Lcom/app/thestream/models/CalendarioLigaMX;
    .registers 2
    .param p0, "x0"    # Lcom/app/thestream/activities/ActivityCalendarLigaMX;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->calendarioLigaMX:Lcom/app/thestream/models/CalendarioLigaMX;

    return-object v0
.end method

.method static synthetic access$002(Lcom/app/thestream/activities/ActivityCalendarLigaMX;Lcom/app/thestream/models/CalendarioLigaMX;)Lcom/app/thestream/models/CalendarioLigaMX;
    .registers 2
    .param p0, "x0"    # Lcom/app/thestream/activities/ActivityCalendarLigaMX;
    .param p1, "x1"    # Lcom/app/thestream/models/CalendarioLigaMX;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->calendarioLigaMX:Lcom/app/thestream/models/CalendarioLigaMX;

    return-object p1
.end method

.method static synthetic access$100(Lcom/app/thestream/activities/ActivityCalendarLigaMX;)V
    .registers 1
    .param p0, "x0"    # Lcom/app/thestream/activities/ActivityCalendarLigaMX;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->updateStats()V

    return-void
.end method

.method static synthetic access$200(Lcom/app/thestream/activities/ActivityCalendarLigaMX;)I
    .registers 2
    .param p0, "x0"    # Lcom/app/thestream/activities/ActivityCalendarLigaMX;

    .prologue
    .line 29
    iget v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->jornadaActual:I

    return v0
.end method

.method static synthetic access$300(Lcom/app/thestream/activities/ActivityCalendarLigaMX;I)V
    .registers 2
    .param p0, "x0"    # Lcom/app/thestream/activities/ActivityCalendarLigaMX;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->loadJornada(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/app/thestream/activities/ActivityCalendarLigaMX;)V
    .registers 1
    .param p0, "x0"    # Lcom/app/thestream/activities/ActivityCalendarLigaMX;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->showError()V

    return-void
.end method

.method static synthetic access$500(Lcom/app/thestream/activities/ActivityCalendarLigaMX;)V
    .registers 1
    .param p0, "x0"    # Lcom/app/thestream/activities/ActivityCalendarLigaMX;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->showGeminiNoticias()V

    return-void
.end method

.method private initGeminiService()V
    .registers 3

    .prologue
    .line 135
    new-instance v0, Lcom/app/thestream/utils/GeminiLigaMXService;

    invoke-direct {v0}, Lcom/app/thestream/utils/GeminiLigaMXService;-><init>()V

    iput-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->geminiService:Lcom/app/thestream/utils/GeminiLigaMXService;

    .line 136
    const-string v0, "CalendarLigaMX"

    const-string v1, "\ud83e\udd16 Servicio Gemini inicializado"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method

.method private initViews()V
    .registers 4

    .prologue
    .line 58
    const v2, 0x7f0c009e    # R.id.toolbar

    invoke-virtual {p0, v2}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/Toolbar;

    iput-object v2, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 59
    const v2, 0x7f0c009c    # R.id.tv_jornada_info

    invoke-virtual {p0, v2}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->tvJornadaInfo:Landroid/widget/TextView;

    .line 60
    const v2, 0x7f0c009d    # R.id.tv_jornada_numero

    invoke-virtual {p0, v2}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->tvJornadaNumero:Landroid/widget/TextView;

    .line 61
    const v2, 0x7f0c009b    # R.id.tv_jornada_fechas

    invoke-virtual {p0, v2}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->tvJornadaFechas:Landroid/widget/TextView;

    .line 62
    const v2, 0x7f0c009f    # R.id.tv_jornada_tipo

    invoke-virtual {p0, v2}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->tvJornadaTipo:Landroid/widget/TextView;

    .line 63
    const v2, 0x7f0c00a0    # R.id.tv_total_jornadas

    invoke-virtual {p0, v2}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->tvTotalJornadas:Landroid/widget/TextView;

    .line 64
    const v2, 0x7f0c0020    # R.id.btn_anterior

    invoke-virtual {p0, v2}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->btnAnterior:Landroid/widget/Button;

    .line 65
    const v2, 0x7f0c0021    # R.id.btn_siguiente

    invoke-virtual {p0, v2}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->btnSiguiente:Landroid/widget/Button;

    .line 66
    const v2, 0x7f0c0075    # R.id.recycler_partidos

    invoke-virtual {p0, v2}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->recyclerPartidos:Landroidx/recyclerview/widget/RecyclerView;

    .line 67
    const v2, 0x7f0c0072    # R.id.progress_loading

    invoke-virtual {p0, v2}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->progressLoading:Landroid/widget/ProgressBar;

    .line 68
    const v2, 0x7f0c0050    # R.id.layout_empty

    invoke-virtual {p0, v2}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->layoutEmpty:Landroid/widget/LinearLayout;

    .line 69
    const v2, 0x7f0c004c    # R.id.jornada_info_section

    invoke-virtual {p0, v2}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->jornadaInfoSection:Landroid/widget/LinearLayout;

    .line 70
    const v2, 0x7f0c008b    # R.id.stats_footer

    invoke-virtual {p0, v2}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->statsFooter:Landroid/widget/LinearLayout;

    .line 73
    const-string v2, "CalendarLigaMX"

    const-string v3, "\ud83d\udd0d Verificando elementos del layout:"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v3, "CalendarLigaMX"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toolbar: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v2, :cond_d2

    const-string v2, "\u2705"

    :goto_ac
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v2, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->btnAnterior:Landroid/widget/Button;

    if-nez v2, :cond_c4

    .line 81
    const-string v2, "CalendarLigaMX"

    const-string v3, "\u274c CR\u00cdTICO: btn_anterior no encontrado en el layout"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_c4
    iget-object v2, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->btnSiguiente:Landroid/widget/Button;

    if-nez v2, :cond_d1

    .line 84
    const-string v2, "CalendarLigaMX"

    const-string v3, "\u274c CR\u00cdTICO: btn_siguiente no encontrado en el layout"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_d1
    return-void

    .line 74
    :cond_d2
    const-string v2, "\u274c"

    goto :goto_ac
.end method

.method private loadCalendario()V
    .registers 2

    .prologue
    .line 140
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->showLoading(Z)V

    .line 143
    new-instance v0, Lcom/app/thestream/activities/ActivityCalendarLigaMX$1;

    invoke-direct {v0, p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX$1;-><init>(Lcom/app/thestream/activities/ActivityCalendarLigaMX;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/app/thestream/activities/ActivityCalendarLigaMX$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 161
    return-void
.end method

.method private loadJornada(I)V
    .registers 5
    .param p1, "numeroJornada"    # I

    .prologue
    .line 164
    iget-object v2, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->calendarioLigaMX:Lcom/app/thestream/models/CalendarioLigaMX;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->calendarioLigaMX:Lcom/app/thestream/models/CalendarioLigaMX;

    invoke-virtual {v2}, Lcom/app/thestream/models/CalendarioLigaMX;->getJornadas()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_d

    .line 165
    :cond_c
    return-void

    .line 168
    :cond_d
    iget-object v2, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->calendarioLigaMX:Lcom/app/thestream/models/CalendarioLigaMX;

    invoke-virtual {v2}, Lcom/app/thestream/models/CalendarioLigaMX;->getJornadas()Ljava/util/List;

    move-result-object v1

    .line 169
    .local v1, "jornadas":Ljava/util/List;, "Ljava/util/List<Lcom/app/thestream/models/Jornada;>;"
    const/4 v2, 0x1

    if-lt p1, v2, :cond_1e

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le p1, v2, :cond_1f

    .line 170
    :cond_1e
    return-void

    .line 173
    :cond_1f
    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/app/thestream/models/Jornada;

    .line 174
    .local v0, "jornada":Lcom/app/thestream/models/Jornada;
    invoke-direct {p0, v0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->updateJornadaInfo(Lcom/app/thestream/models/Jornada;)V

    .line 175
    invoke-virtual {v0}, Lcom/app/thestream/models/Jornada;->getPartidos()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->updatePartidos(Ljava/util/List;)V

    .line 176
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->updateNavigationButtons()V

    .line 178
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->showLoading(Z)V

    .line 179
    return-void
.end method

.method private setupClickListeners()V
    .registers 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->btnAnterior:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->btnSiguiente:Landroid/widget/Button;

    if-nez v0, :cond_12

    .line 104
    :cond_8
    const-string v0, "CalendarLigaMX"

    const-string v1, "\u274c Error cr\u00edtico: Botones no encontrados en el layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void

    .line 108
    :cond_12
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->btnAnterior:Landroid/widget/Button;

    new-instance v1, Lcom/app/thestream/activities/ActivityCalendarLigaMX$2;

    invoke-direct {v1, p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX$2;-><init>(Lcom/app/thestream/activities/ActivityCalendarLigaMX;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->btnSiguiente:Landroid/widget/Button;

    new-instance v1, Lcom/app/thestream/activities/ActivityCalendarLigaMX$3;

    invoke-direct {v1, p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX$3;-><init>(Lcom/app/thestream/activities/ActivityCalendarLigaMX;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const-string v0, "CalendarLigaMX"

    const-string v1, "\u2705 Click listeners configurados correctamente"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void
.end method

.method private setupRecyclerView()V
    .registers 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->recyclerPartidos:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 98
    new-instance v0, Lcom/app/thestream/adapters/PartidoAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/app/thestream/adapters/PartidoAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->partidoAdapter:Lcom/app/thestream/adapters/PartidoAdapter;

    .line 99
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->recyclerPartidos:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->partidoAdapter:Lcom/app/thestream/adapters/PartidoAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 100
    return-void
.end method

.method private setupToolbar()V
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 90
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 91
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 92
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f12001a    # R.string.calendario_liga_mx

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 94
    :cond_1a
    return-void
.end method

.method private showError()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 228
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->showLoading(Z)V

    .line 229
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->recyclerPartidos:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->layoutEmpty:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 231
    return-void
.end method

.method private showGeminiJornadaInfo()V
    .registers 1

    .prologue
    .line 269
    return-void
.end method

.method private showGeminiNoticias()V
    .registers 1

    .prologue
    .line 311
    return-void
.end method

.method private showGeminiResponseDialog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 346
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u2705 Cerrar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\ud83d\udcf0 M\u00e1s Noticias"

    new-instance v2, Lcom/app/thestream/activities/ActivityCalendarLigaMX$4;

    invoke-direct {v2, p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX$4;-><init>(Lcom/app/thestream/activities/ActivityCalendarLigaMX;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 353
    return-void
.end method

.method private showLoading(Z)V
    .registers 5
    .param p1, "show"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 222
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->progressLoading:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_27

    move v3, v1

    :goto_8
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->recyclerPartidos:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_29

    move v3, v2

    :goto_10
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->layoutEmpty:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 225
    return-void

    :cond_27
    move v3, v2

    .line 222
    goto :goto_8

    :cond_29
    move v3, v1

    .line 223
    goto :goto_10
.end method

.method private updateJornadaInfo(Lcom/app/thestream/models/Jornada;)V
    .registers 7
    .param p1, "jornada"    # Lcom/app/thestream/models/Jornada;

    .prologue
    const/4 v4, 0x0

    .line 182
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->tvJornadaInfo:Landroid/widget/TextView;

    const v1, 0x7f120015    # R.string.jornada_info

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/app/thestream/models/Jornada;->getNumero()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->calendarioLigaMX:Lcom/app/thestream/models/CalendarioLigaMX;

    invoke-virtual {v4}, Lcom/app/thestream/models/CalendarioLigaMX;->getJornadas()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->tvJornadaNumero:Landroid/widget/TextView;

    const v1, 0x7f120016    # R.string.jornada_numero

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/app/thestream/models/Jornada;->getNumero()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->tvJornadaFechas:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/app/thestream/models/Jornada;->getFechas()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    invoke-virtual {p1}, Lcom/app/thestream/models/Jornada;->getTipo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6f

    invoke-virtual {p1}, Lcom/app/thestream/models/Jornada;->getTipo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6f

    .line 188
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->tvJornadaTipo:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/app/thestream/models/Jornada;->getTipo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->tvJornadaTipo:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    :goto_6b
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->jornadaInfoSection:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 195
    return-void

    .line 191
    :cond_6f
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->tvJornadaTipo:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6b
.end method

.method private updateNavigationButtons()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 209
    iget-object v2, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->btnAnterior:Landroid/widget/Button;

    iget v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->jornadaActual:I

    if-le v0, v1, :cond_2a

    move v0, v1

    :goto_8
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 210
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->btnSiguiente:Landroid/widget/Button;

    iget-object v2, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->calendarioLigaMX:Lcom/app/thestream/models/CalendarioLigaMX;

    if-eqz v2, :cond_2c

    iget v2, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->jornadaActual:I

    iget-object v3, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->calendarioLigaMX:Lcom/app/thestream/models/CalendarioLigaMX;

    invoke-virtual {v3}, Lcom/app/thestream/models/CalendarioLigaMX;->getJornadas()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2c

    :goto_21
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 212
    return-void

    .line 209
    :cond_2a
    const/4 v0, 0x0

    goto :goto_8

    .line 210
    :cond_2c
    const/4 v1, 0x0

    goto :goto_21
.end method

.method private updatePartidos(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/app/thestream/models/Partido;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "partidos":Ljava/util/List;, "Ljava/util/List<Lcom/app/thestream/models/Partido;>;"
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 198
    if-eqz p1, :cond_18

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_18

    .line 199
    iget-object v1, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->partidoAdapter:Lcom/app/thestream/adapters/PartidoAdapter;

    invoke-virtual {v1, p1}, Lcom/app/thestream/adapters/PartidoAdapter;->updatePartidos(Ljava/util/List;)V

    .line 200
    iget-object v1, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->recyclerPartidos:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->layoutEmpty:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 206
    :goto_17
    return-void

    .line 203
    :cond_18
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->recyclerPartidos:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->layoutEmpty:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_17
.end method

.method private updateStats()V
    .registers 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->calendarioLigaMX:Lcom/app/thestream/models/CalendarioLigaMX;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->calendarioLigaMX:Lcom/app/thestream/models/CalendarioLigaMX;

    invoke-virtual {v0}, Lcom/app/thestream/models/CalendarioLigaMX;->getJornadas()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 216
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->tvTotalJornadas:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->calendarioLigaMX:Lcom/app/thestream/models/CalendarioLigaMX;

    invoke-virtual {v1}, Lcom/app/thestream/models/CalendarioLigaMX;->getJornadas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->statsFooter:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 219
    :cond_26
    return-void
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0005    # R.menu.menu_calendar_ligamx

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 235
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f0e0019    # R.layout.activity_calendar_ligamx

    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->setContentView(I)V

    .line 48
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->initViews()V

    .line 49
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->setupToolbar()V

    .line 50
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->setupRecyclerView()V

    .line 51
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->setupClickListeners()V

    .line 52
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->initGeminiService()V

    .line 53
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->loadCalendario()V

    .line 54
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 261
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 262
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->geminiService:Lcom/app/thestream/utils/GeminiLigaMXService;

    if-eqz v0, :cond_c

    .line 263
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->geminiService:Lcom/app/thestream/utils/GeminiLigaMXService;

    invoke-virtual {v0}, Lcom/app/thestream/utils/GeminiLigaMXService;->shutdown()V

    .line 265
    :cond_c
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 239
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 241
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 242
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->onBackPressed()V

    .line 258
    :goto_d
    return v2

    .line 244
    :cond_e
    const v1, 0x7f0c005a    # R.id.menu_gemini_analisis

    if-ne v0, v1, :cond_18

    .line 245
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->showGeminiJornadaInfo()V

    goto :goto_d

    .line 247
    :cond_18
    const v1, 0x7f0c005b    # R.id.menu_gemini_noticias

    if-ne v0, v1, :cond_22

    .line 248
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->showGeminiNoticias()V

    goto :goto_d

    .line 250
    :cond_22
    const v1, 0x7f0c005c    # R.id.menu_actualizar

    if-ne v0, v1, :cond_2c

    .line 251
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->loadCalendario()V

    goto :goto_d

    .line 258
    :cond_2c
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method