import { memo } from "react";
import type { ExerciseTemplate } from "@/models";

const DIFFICULTY_LABELS = {
  easy: {
    label: "Łatwy",
    class: "bg-green-100 text-green-800 dark:bg-green-900 dark:text-green-300",
  },
  medium: {
    label: "Średni",
    class: "bg-yellow-100 text-yellow-800 dark:bg-yellow-900 dark:text-yellow-300",
  },
  hard: {
    label: "Trudny",
    class: "bg-red-100 text-red-800 dark:bg-red-900 dark:text-red-300",
  },
} as const;

interface ExerciseCardProps {
  exercise: ExerciseTemplate;
  onAddToWorkout?: (exercise: ExerciseTemplate) => void;
}

export const ExerciseCard = memo(function ExerciseCard({ exercise, onAddToWorkout }: ExerciseCardProps) {
  return (
    <article className="exercise-card group border rounded-lg bg-card hover:border-primary hover:shadow-lg transition-all duration-200 overflow-hidden grid grid-rows-[auto_auto_1fr_auto] h-full">
      {/* Header karty - stała wysokość */}
      <div className="p-4 border-b bg-muted/30 min-h-[120px] flex flex-col justify-between">
        <div>
          <h3 className="font-semibold text-lg group-hover:text-primary transition-colors line-clamp-2 leading-tight">
            {exercise.name}
          </h3>
          <div className="mt-2 flex-grow">
            {exercise.description && (
              <p className="text-sm text-muted-foreground line-clamp-3 leading-relaxed">{exercise.description}</p>
            )}
          </div>
        </div>
      </div>

      {/* Poziom trudności - stała wysokość */}
      <div className="p-3 border-b bg-background/50 min-h-[50px] flex items-center">
        {exercise.difficulty && (
          <div className="flex items-center gap-2">
            <span className="text-xs font-medium text-muted-foreground">Poziom:</span>
            <span className={`text-xs font-medium px-2 py-1 rounded ${DIFFICULTY_LABELS[exercise.difficulty].class}`}>
              {DIFFICULTY_LABELS[exercise.difficulty].label}
            </span>
          </div>
        )}
      </div>

      {/* Instrukcje - elastyczna wysokość */}
      <div className="p-3 flex-grow overflow-hidden">
        {exercise.instructions && (
          <div>
            <span className="text-xs font-medium text-muted-foreground block mb-2">Jak wykonać:</span>
            <p className="text-xs text-muted-foreground leading-relaxed line-clamp-4">{exercise.instructions}</p>
          </div>
        )}
      </div>

      {/* Footer karty z akcjami - stała wysokość */}
      <div className="p-4 bg-muted/20 min-h-[60px] flex items-center">
        <button
          onClick={() => onAddToWorkout?.(exercise)}
          className="w-full inline-flex items-center justify-center gap-2 rounded-md text-sm font-medium bg-primary text-primary-foreground hover:bg-primary/90 h-9 px-4 transition-colors"
        >
          <span>➕</span>
          <span>Dodaj do treningu</span>
        </button>
      </div>
    </article>
  );
});
