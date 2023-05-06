from calendar import c
from this import *
import tkinter as tk
from tkinter import *
from tkinter import ttk
from tkinter import messagebox
import telaInicial as tini

def tela(janela):
    posi = 0
    fr = Frame(janela, bg="#BA90C6")
    fr.place(relx=0, rely=0, relwidth=1, relheight=1)

    frm_botoes = Frame(fr, bg='#3EB21E',highlightbackground= '#3EB21E',highlightthickness=4)
    frm_botoes.place(relx=0, rely=0, relwidth=1, relheight=0.25)

    frm_caixa = Frame(fr, bg='#6cf5e7',highlightbackground= '#3EB21E',highlightthickness=4)
    frm_caixa.place(relx=0, rely=0.25, relwidth=1, relheight=0.75)

    def avancar():
        if(frm_caixa.winfo_exists()):
            for i in frm_caixa.winfo_children():
                i.destroy()
            caixa2()

    
    def voltar():
        if(frm_caixa.winfo_exists()):
            fr.destroy()
            tini.tela(janela)
        else:
            frm_caixa.destroy()

    Button(frm_botoes, text="Voltar", command=voltar, width=8, height=5).pack(side = LEFT)
    Button(frm_botoes, text="Avançar", command=avancar, width=8, height=5).pack(side = RIGHT)

    def caixa1():
        Label(frm_caixa, text="Nome do Projeto:", font=('Helvetica 10 bold')).pack(anchor=NW)
        nomeProjeto = StringVar()
        e_nomeProjeto = Entry(frm_caixa, textvariable=nomeProjeto)
        e_nomeProjeto.pack(anchor=NW)

        Label(frm_caixa, text="Nome do Requisitante:", font=('Helvetica 10 bold')).pack(anchor=NW)
        nomeRequisitante = StringVar()
        e_nomeRequisitante = Entry(frm_caixa, textvariable=nomeRequisitante)
        e_nomeRequisitante.pack(anchor=NW)

        Label(frm_caixa, text="Nome do Gerente:", font=('Helvetica 10 bold')).pack(anchor=N)
        nomeGerente = StringVar()
        e_nomeGerente = Entry(frm_caixa, textvariable=nomeGerente)
        e_nomeGerente.pack(anchor=N)

        Label(frm_caixa, text="Nome do Testador:", font=('Helvetica 10 bold')).pack(anchor=N)
        nomeTestador = StringVar()
        e_nomeTestador = Entry(frm_caixa, textvariable=nomeTestador)
        e_nomeTestador.pack(anchor=N)

        Label(frm_caixa, text="Nome do codificador:", font=('Helvetica 10 bold')).pack(anchor=NE)
        nomecodificador = StringVar()
        e_nomecodificador = Entry(frm_caixa, textvariable=nomecodificador)
        e_nomecodificador.pack(anchor=NE)

        Label(frm_caixa, text="Nome do Extra:", font=('Helvetica 10 bold')).pack(anchor=NE)
        nomeExtra = StringVar()
        e_nomeExtra = Entry(frm_caixa, textvariable=nomeExtra)
        e_nomeExtra.pack(anchor=NE)

    caixa1()
    def caixa2():
        Label(frm_caixa, text="Nome do Extra:", font=('Helvetica 10 bold')).pack()