library(DiagrammeR)
library(ggplot2)
library(rsvg)
library(DiagrammeRsvg)

grViz("
  digraph dot
  {
    node[shape = box, penwidth=5, fontsize=32, width=2, height=1.5, fontname = Helvetica, style='rounded,bold']
    A[label= < <B>Non-Attainment Cities of India    <BR/> (CPCB Website) </B> >];
    B[label= < <B>2011 Population statistics    <BR/>(Census Data) </B> >];
    C[label= < <B>'X' and 'Y' class cities of India     <BR/>(Goverment of India) </B> >];
    node[shape=diamond]
    D[label=<<B> Screening </B> >]
    node[shape = box, fontsize=32, width=2, height=2.0, fontname = Helvetica, style='rounded,bold']
    E[label= < <B>'X' (Pop \u2265 5 Million) and     <BR/> 'Y' (5 Million \u2265 Pop \u2265 Million)    <BR/> Class NACs </B>>]
    F[label = <<B> CAAQMS Dataset  <BR/>   (CPCB Dashboard) </B>  >];
    G[label = <<B> Manual Monitoring Data  <BR/>    (CPCB/SPCB Websites) </B>   >];
    H[label= <<B> PM<SUB>2.5</SUB> Data Availability </B>>];
    J[label= <<B> PM<SUB>2.5</SUB> Data Availability </B>>];
    node[shape = box, fontsize=32, width=2, height=2.0, fontname = Helvetica, style='rounded,bold']
    K[label =<<B> Conditional Screening   <BR/>  and  <BR/>  PM<SUB>2.5</SUB> Outlier Removal </B>>];
    node[shape=diamond, penwidth=5, fontsize=32, width=2, height=1.5, fontname = Helvetica, style='rounded,bold']
    L[label= <<B> Mean PM<SUB>2.5</SUB> </B>>];
    node[shape = box, penwidth=5, fontsize=32, width=2, height=1.5, fontname = Helvetica, style='rounded,bold']
    M[label = <<B>     City Specific Annual PM  <SUB> 2.5</SUB>  </B>>];
    node[shape=box,fontsize=32, width=2, height=1.5, fontname = Helvetica, style='rounded,bold']
    V[label=< <B>PM<SUB>10</SUB> Retreival for Current     <BR/><BR/>or Subsequent Year</B>>];
    node[shape=box, fontsize=32, width=3, height=2, fontname = Helvetica, style='rounded,bold']
    N[label = <<B>PM<SUB>10</SUB> to PM<SUB>2.5</SUB><BR/><BR/>  Relation Using <BR/>Literature or Statistical Methods     </B>>];
    O[label= <<B> Mortality Data (Age \u2265 25 years) <BR/>(Central Registration System)       </B>>];
    P[label= <<B> Cause Specific Mortality Rates   <BR/>(GBD Database)   </B>>];
    node[shape=diamond, penwidth=5, fontsize=32, width=2, height=1.5, fontname = Helvetica, style='rounded,bold']
    Q[label= <<B> Collate </B>>];
    node[shape = box, penwidth=5, fontsize=32, width=2, height=1.5, fontname = Helvetica, style='rounded,bold']
    R[label= <<B>    Global Estimate for Mortality Model (GEMM)    </B>>];
    S[label = <<B>    Value of statistical Life (VSL)     </B>>];
    T[label = <<B>    Premature Mortality <BR/>      Attributed to PM <SUB>2.5</SUB>   </B>>];
    U[label = <<B>   Economic Loss Attributable     <BR/>to Mortality (US$)      </B>>];
    v[label = <<B> GEMM specific constants </B> >]
    edge[color = black, arrowhead = vee, arrowsize = 2, penwidth=5]
    A->D; B->D; C->D; D->E;E->F; E->G;F->H ;H->K [label = < <B>Yes </B>>,fontsize=32]; G->J->L;K->L;H->V [label = < <B>No</B>>,fontsize=32];J->V[label = < <B>No</B>>,fontsize=32];V->N; L->M;N->M;
    O->Q;P->Q;B->Q;M->Q;Q->R;
    R->T->U; S->U;
    v->R;
    graph[nodesep=1.0]
     }
")%>%
  export_svg %>% charToRaw %>% rsvg_png("graph.png")
