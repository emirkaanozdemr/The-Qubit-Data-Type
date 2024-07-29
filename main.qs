namespace Kata {
    open Microsoft.Quantum.Diagnostics;

    @EntryPoint()
    operation RunExample() : Unit {
        // This line allocates a qubit in state |0⟩.
        use q = Qubit();
        Message("State |0⟩:");

        // This line prints out the state of the quantum computer.
        // Since only one qubit is allocated, only its state is printed.
        DumpMachine();

        // This line changes the qubit from state |0⟩ to state |1⟩.
        X(q);

        Message("State |1⟩:");
        DumpMachine();

        // This line changes the qubit to state |-⟩ = (1/sqrt(2))(|0⟩ - |1⟩).
        // That is, this puts the qubit into a superposition where the absolute
        // value of the probability amplitudes is 1/sqrt(2), which is
        // approximately 0.707107.
        H(q);

        Message("State |-⟩:");
        DumpMachine();

        // This line changes the qubit to state |-i⟩ = (1/sqrt(2))(|0⟩ - i|1⟩).
        S(q);

        Message("State |-i⟩:");
        DumpMachine();

        // This will put the qubit into an uneven superposition, where the
        // amplitudes of |0⟩ and |1⟩ have different absolute values.
        Rx(2.0, q);
        Ry(1.0, q);

        Message("Uneven superposition state:");
        DumpMachine();

        // This line returns the qubit to state |0⟩, which must be done before
        // the qubit is released or otherwise a runtime error might occur.
        Reset(q);
    }
}
